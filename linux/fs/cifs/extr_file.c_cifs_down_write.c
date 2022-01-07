
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int dummy; } ;


 int down_write_trylock (struct rw_semaphore*) ;
 int msleep (int) ;

void
cifs_down_write(struct rw_semaphore *sem)
{
 while (!down_write_trylock(sem))
  msleep(10);
}
