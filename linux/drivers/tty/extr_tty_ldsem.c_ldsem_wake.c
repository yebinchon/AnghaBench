
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld_semaphore {int wait_lock; } ;


 int __ldsem_wake (struct ld_semaphore*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ldsem_wake(struct ld_semaphore *sem)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&sem->wait_lock, flags);
 __ldsem_wake(sem);
 raw_spin_unlock_irqrestore(&sem->wait_lock, flags);
}
