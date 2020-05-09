class User < ApplicationRecord
  attr_accessor :search_name, :search_age

  def search
    User.ransack(name_cont: @search_name, age_eq: @search_age).result
    # eqはイコール：一致、contは含む場合の検索結果。ransack使うならresultまで記述する
  end
end
