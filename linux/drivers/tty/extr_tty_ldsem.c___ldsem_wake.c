
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld_semaphore {int read_wait; int write_wait; } ;


 int __ldsem_wake_readers (struct ld_semaphore*) ;
 int __ldsem_wake_writer (struct ld_semaphore*) ;
 int list_empty (int *) ;

__attribute__((used)) static void __ldsem_wake(struct ld_semaphore *sem)
{
 if (!list_empty(&sem->write_wait))
  __ldsem_wake_writer(sem);
 else if (!list_empty(&sem->read_wait))
  __ldsem_wake_readers(sem);
}
