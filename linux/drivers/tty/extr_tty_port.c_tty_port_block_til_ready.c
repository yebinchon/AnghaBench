
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_port {int flags; int lock; int blocked_open; int count; int open_wait; } ;
struct file {int f_flags; } ;


 int ASYNC_HUP_NOTIFY ;
 scalar_t__ C_BAUD (struct tty_struct*) ;
 scalar_t__ C_CLOCAL (struct tty_struct*) ;
 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int O_NONBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 scalar_t__ tty_io_error (struct tty_struct*) ;
 int tty_lock (struct tty_struct*) ;
 scalar_t__ tty_port_carrier_raised (struct tty_port*) ;
 scalar_t__ tty_port_initialized (struct tty_port*) ;
 int tty_port_raise_dtr_rts (struct tty_port*) ;
 int tty_port_set_active (struct tty_port*,int) ;
 int tty_unlock (struct tty_struct*) ;
 int wait ;

int tty_port_block_til_ready(struct tty_port *port,
    struct tty_struct *tty, struct file *filp)
{
 int do_clocal = 0, retval;
 unsigned long flags;
 DEFINE_WAIT(wait);



 if (tty_io_error(tty)) {
  tty_port_set_active(port, 1);
  return 0;
 }
 if (filp == ((void*)0) || (filp->f_flags & O_NONBLOCK)) {

  if (C_BAUD(tty))
   tty_port_raise_dtr_rts(port);
  tty_port_set_active(port, 1);
  return 0;
 }

 if (C_CLOCAL(tty))
  do_clocal = 1;





 retval = 0;


 spin_lock_irqsave(&port->lock, flags);
 port->count--;
 port->blocked_open++;
 spin_unlock_irqrestore(&port->lock, flags);

 while (1) {

  if (C_BAUD(tty) && tty_port_initialized(port))
   tty_port_raise_dtr_rts(port);

  prepare_to_wait(&port->open_wait, &wait, TASK_INTERRUPTIBLE);


  if (tty_hung_up_p(filp) || !tty_port_initialized(port)) {
   if (port->flags & ASYNC_HUP_NOTIFY)
    retval = -EAGAIN;
   else
    retval = -ERESTARTSYS;
   break;
  }






  if (do_clocal || tty_port_carrier_raised(port))
   break;
  if (signal_pending(current)) {
   retval = -ERESTARTSYS;
   break;
  }
  tty_unlock(tty);
  schedule();
  tty_lock(tty);
 }
 finish_wait(&port->open_wait, &wait);



 spin_lock_irqsave(&port->lock, flags);
 if (!tty_hung_up_p(filp))
  port->count++;
 port->blocked_open--;
 spin_unlock_irqrestore(&port->lock, flags);
 if (retval == 0)
  tty_port_set_active(port, 1);
 return retval;
}
