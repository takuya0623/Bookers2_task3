Rails.application.routes.draw do
	devise_for :users
	root 'homes#top'
	  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get 'home/about' => 'homes#about'
	resources :books do
		resource :favorites,only: [:create, :destroy]
		resource :book_comments,only: [:create, :destroy]
	end
	resources :users
end
