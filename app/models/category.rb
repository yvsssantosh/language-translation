# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
  has_many :articles

  validates :name, presence: true

  # default order when calling the Category model
  default_scope -> { order('created_at DESC') }
end
