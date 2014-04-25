## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeCacheMatrix creates a list of functions for a cached matrix,
#including a function to set and retrieve the original matrix, 
#and set and retrieve the inverse of the original matrix

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## Write a short comment describing this function

# if the inverse is already cached, it retrieves the inverse
# else, it pulls the initial matrix, calculates the inverse, 
#sets the inverse in cache, and prints the inverse to the console

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
}

