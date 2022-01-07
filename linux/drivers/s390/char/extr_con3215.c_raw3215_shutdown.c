
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {int flags; int cdev; int port; int empty_wait; int * queued_read; int * queued_write; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int RAW3215_FIXED ;
 int RAW3215_WORKING ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int get_ccwdev_lock (int ) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int tty_port_initialized (int *) ;
 int tty_port_set_initialized (int *,int) ;
 int wait ;

__attribute__((used)) static void raw3215_shutdown(struct raw3215_info *raw)
{
 DECLARE_WAITQUEUE(wait, current);
 unsigned long flags;

 if (!tty_port_initialized(&raw->port) || (raw->flags & RAW3215_FIXED))
  return;

 spin_lock_irqsave(get_ccwdev_lock(raw->cdev), flags);
 if ((raw->flags & RAW3215_WORKING) ||
     raw->queued_write != ((void*)0) ||
     raw->queued_read != ((void*)0)) {
  add_wait_queue(&raw->empty_wait, &wait);
  set_current_state(TASK_INTERRUPTIBLE);
  spin_unlock_irqrestore(get_ccwdev_lock(raw->cdev), flags);
  schedule();
  spin_lock_irqsave(get_ccwdev_lock(raw->cdev), flags);
  remove_wait_queue(&raw->empty_wait, &wait);
  set_current_state(TASK_RUNNING);
  tty_port_set_initialized(&raw->port, 1);
 }
 spin_unlock_irqrestore(get_ccwdev_lock(raw->cdev), flags);
}
