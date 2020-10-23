class Book < ApplicationRecord

  validates :name, presence: true

  has_many :book_groups
  has_many :groups, through: :book_groups

  belongs_to :author, class_name: 'User'
end
