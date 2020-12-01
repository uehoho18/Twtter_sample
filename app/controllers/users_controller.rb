class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets
    @favorite_tweets = @user.favorite_tweets
  end

  def follows
    user = User.find(params[:id])
    @users = user.followings
  end

  def follwers
    user = User.find(params[:id])
    @users = user.follwers
  end
  
end
