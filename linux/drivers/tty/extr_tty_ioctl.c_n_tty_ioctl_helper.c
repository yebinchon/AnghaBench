
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flow_stopped; int flow_lock; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int START_CHAR (struct tty_struct*) ;
 int STOP_CHAR (struct tty_struct*) ;






 int __DISABLED_CHAR ;
 int __start_tty (struct tty_struct*) ;
 int __stop_tty (struct tty_struct*) ;
 int __tty_perform_flush (struct tty_struct*,unsigned long) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tty_check_change (struct tty_struct*) ;
 int tty_mode_ioctl (struct tty_struct*,struct file*,unsigned int,unsigned long) ;
 int tty_send_xchar (struct tty_struct*,int ) ;

int n_tty_ioctl_helper(struct tty_struct *tty, struct file *file,
         unsigned int cmd, unsigned long arg)
{
 int retval;

 switch (cmd) {
 case 128:
  retval = tty_check_change(tty);
  if (retval)
   return retval;
  switch (arg) {
  case 130:
   spin_lock_irq(&tty->flow_lock);
   if (!tty->flow_stopped) {
    tty->flow_stopped = 1;
    __stop_tty(tty);
   }
   spin_unlock_irq(&tty->flow_lock);
   break;
  case 129:
   spin_lock_irq(&tty->flow_lock);
   if (tty->flow_stopped) {
    tty->flow_stopped = 0;
    __start_tty(tty);
   }
   spin_unlock_irq(&tty->flow_lock);
   break;
  case 132:
   if (STOP_CHAR(tty) != __DISABLED_CHAR)
    retval = tty_send_xchar(tty, STOP_CHAR(tty));
   break;
  case 131:
   if (START_CHAR(tty) != __DISABLED_CHAR)
    retval = tty_send_xchar(tty, START_CHAR(tty));
   break;
  default:
   return -EINVAL;
  }
  return retval;
 case 133:
  retval = tty_check_change(tty);
  if (retval)
   return retval;
  return __tty_perform_flush(tty, arg);
 default:

  return tty_mode_ioctl(tty, file, cmd, arg);
 }
}
