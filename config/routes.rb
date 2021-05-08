Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  delete'books/:id' => 'books#destroy', as:'destroy_book'
  patch 'books/id' => 'books#update', as:'update_book'
  get'top'=>'homes#top'
  root to: 'homes#top'
end
