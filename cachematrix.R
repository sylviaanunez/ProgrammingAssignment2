## Matrix inversion is usually a costly computation and there may be some 
##benefit to caching the inverse of a matrix rather than computing it repeatedly

## Create matrix special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        ##set martix
        n <- NULL
        set <- function(matrix){
              m <<- matrix
              n <<- NULL
        }
        
       ##get matrix
        get <- function(){
                m

        ##return to matrix
        }
        setInverse <- function(inverse) {
                n <<- inverse 
        }
        ## set inverse of matrix
        
        getInverse <- function() {
                n
        }
        ##returns inverse
        
        list(set =set, get = get, setInverse = setInverse, 
             getInverse = getInverse)
        
}


  ##This function computes the inverse of the special 
##matrixreturned by `makeCacheMatrix` above. If the inverse has
##already been calculated (and the matrix has not changed), then
##`cacheSolve` should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        
        if (!is.null(m)){
                message("retrieving cached data")
                return(m)
        ##return inverse if already set
        }
        ##get matrix
        data <- x$get()
        
        ##mutliply matrix to calculate inverse
        m <- solve(data, ...) 
        
        ##set inverse to object
        x$setInverse(m)
        
        ##return matrix
        m
}
