
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;


 int EAGAIN ;
 scalar_t__ likely (int ) ;
 int mutex_lock_interruptible (struct mutex*) ;
 int mutex_trylock (struct mutex*) ;

__attribute__((used)) static int ffs_mutex_lock(struct mutex *mutex, unsigned nonblock)
{
 return nonblock
  ? likely(mutex_trylock(mutex)) ? 0 : -EAGAIN
  : mutex_lock_interruptible(mutex);
}
