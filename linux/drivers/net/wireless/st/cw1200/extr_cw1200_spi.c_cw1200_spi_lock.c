
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwbus_priv {int claimed; int wq; int lock; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int might_sleep () ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait ;

__attribute__((used)) static void cw1200_spi_lock(struct hwbus_priv *self)
{
 unsigned long flags;

 DECLARE_WAITQUEUE(wait, current);

 might_sleep();

 add_wait_queue(&self->wq, &wait);
 spin_lock_irqsave(&self->lock, flags);
 while (1) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  if (!self->claimed)
   break;
  spin_unlock_irqrestore(&self->lock, flags);
  schedule();
  spin_lock_irqsave(&self->lock, flags);
 }
 set_current_state(TASK_RUNNING);
 self->claimed = 1;
 spin_unlock_irqrestore(&self->lock, flags);
 remove_wait_queue(&self->wq, &wait);

 return;
}
