
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_icount {scalar_t__ dsr; scalar_t__ dcd; scalar_t__ rng; } ;
struct acm {scalar_t__ disconnected; int wioctl; int read_lock; struct async_icount oldcount; struct async_icount iocount; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int ENODEV ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 unsigned long TIOCM_CD ;
 unsigned long TIOCM_DSR ;
 unsigned long TIOCM_RI ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait ;

__attribute__((used)) static int wait_serial_change(struct acm *acm, unsigned long arg)
{
 int rv = 0;
 DECLARE_WAITQUEUE(wait, current);
 struct async_icount old, new;

 do {
  spin_lock_irq(&acm->read_lock);
  old = acm->oldcount;
  new = acm->iocount;
  acm->oldcount = new;
  spin_unlock_irq(&acm->read_lock);

  if ((arg & TIOCM_DSR) &&
   old.dsr != new.dsr)
   break;
  if ((arg & TIOCM_CD) &&
   old.dcd != new.dcd)
   break;
  if ((arg & TIOCM_RI) &&
   old.rng != new.rng)
   break;

  add_wait_queue(&acm->wioctl, &wait);
  set_current_state(TASK_INTERRUPTIBLE);
  schedule();
  remove_wait_queue(&acm->wioctl, &wait);
  if (acm->disconnected) {
   if (arg & TIOCM_CD)
    break;
   else
    rv = -ENODEV;
  } else {
   if (signal_pending(current))
    rv = -ERESTARTSYS;
  }
 } while (!rv);



 return rv;
}
