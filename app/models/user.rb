class User < ActiveRecord::Base

	validates :name, presence: true, length: { maximum: 200 }
	VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 255 },
									format: { with: VALID_EMAIL },
									uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, length: { minimum: 6 }
end
