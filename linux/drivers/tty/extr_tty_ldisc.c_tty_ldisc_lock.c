
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; int write_wait; int read_wait; } ;


 int EBUSY ;
 int TTY_LDISC_CHANGING ;
 int TTY_LDISC_HALTED ;
 int __tty_ldisc_lock (struct tty_struct*,unsigned long) ;
 int set_bit (int ,int *) ;
 int wake_up_interruptible_all (int *) ;

int tty_ldisc_lock(struct tty_struct *tty, unsigned long timeout)
{
 int ret;


 set_bit(TTY_LDISC_CHANGING, &tty->flags);
 wake_up_interruptible_all(&tty->read_wait);
 wake_up_interruptible_all(&tty->write_wait);

 ret = __tty_ldisc_lock(tty, timeout);
 if (!ret)
  return -EBUSY;
 set_bit(TTY_LDISC_HALTED, &tty->flags);
 return 0;
}
