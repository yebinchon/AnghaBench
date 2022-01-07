
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_icount {scalar_t__ dsr; scalar_t__ dcd; scalar_t__ rng; } ;
struct gb_tty {scalar_t__ disconnected; int wioctl; int read_lock; struct async_icount oldcount; struct async_icount iocount; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EINVAL ;
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

__attribute__((used)) static int wait_serial_change(struct gb_tty *gb_tty, unsigned long arg)
{
 int retval = 0;
 DECLARE_WAITQUEUE(wait, current);
 struct async_icount old;
 struct async_icount new;

 if (!(arg & (TIOCM_DSR | TIOCM_RI | TIOCM_CD)))
  return -EINVAL;

 do {
  spin_lock_irq(&gb_tty->read_lock);
  old = gb_tty->oldcount;
  new = gb_tty->iocount;
  gb_tty->oldcount = new;
  spin_unlock_irq(&gb_tty->read_lock);

  if ((arg & TIOCM_DSR) && (old.dsr != new.dsr))
   break;
  if ((arg & TIOCM_CD) && (old.dcd != new.dcd))
   break;
  if ((arg & TIOCM_RI) && (old.rng != new.rng))
   break;

  add_wait_queue(&gb_tty->wioctl, &wait);
  set_current_state(TASK_INTERRUPTIBLE);
  schedule();
  remove_wait_queue(&gb_tty->wioctl, &wait);
  if (gb_tty->disconnected) {
   if (arg & TIOCM_CD)
    break;
   retval = -ENODEV;
  } else if (signal_pending(current)) {
   retval = -ERESTARTSYS;
  }
 } while (!retval);

 return retval;
}
