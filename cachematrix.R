## The objective of these two functions to understand the lexical scoping  
## and also retrun a cached value 
## The make cache matrix function takes matirix vector as an argument and 
## returns the original and inverse matrix to the parent environment

makeCacheMatrix <- function(x = matrix()) {
       
        m <- NULL  set <- function(y) {    x <<- y    m <<- NULL  }  
        #print(x)  #print(m)  
        get <- function() x 
        #print(get)  
        setinverse <- function(solve) m <<- solve  
        #print (setinverse)  
        getinverse <- function() m  
        # Create a list with get and set methods for both original and inverse matrix 
        # and resturns the list to the parent enviornment  
        list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        # This function returns inverse matrix of a given vector passed to the mackeCachematrix function 
        # 1. This fucntion checks if any chache value existis for the given matrix vector
        # 2. if there is a cache exisits ,displays a a cached data message and results 
        # 3. the function resturns the inverse matrix from      
        m <- x$getinverse()  
        print (m) # prints the m value to validate it returns null value initially 
        if(!is.null(m)) {    message("getting cached data")    return(m)  } 
        mtrx <- x$get() # gets the matrix vector argument passed in the 
        makeCachematrix  m <- solve(mtrx) # Returns the Invrse matrix value of an matrix arugment  x$setinverse(m)   m
}
