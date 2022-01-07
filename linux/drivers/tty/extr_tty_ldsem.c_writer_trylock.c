
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld_semaphore {int count; } ;


 long LDSEM_ACTIVE_BIAS ;
 long LDSEM_ACTIVE_MASK ;
 long atomic_long_add_return (long,int *) ;
 scalar_t__ atomic_long_try_cmpxchg (int *,long*,long) ;

__attribute__((used)) static inline int writer_trylock(struct ld_semaphore *sem)
{




 long count = atomic_long_add_return(LDSEM_ACTIVE_BIAS, &sem->count);
 do {
  if ((count & LDSEM_ACTIVE_MASK) == LDSEM_ACTIVE_BIAS)
   return 1;
  if (atomic_long_try_cmpxchg(&sem->count, &count, count - LDSEM_ACTIVE_BIAS))
   return 0;
 } while (1);
}
