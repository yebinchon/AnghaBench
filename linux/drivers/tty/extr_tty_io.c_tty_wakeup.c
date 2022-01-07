
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int write_wait; int flags; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_wakeup ) (struct tty_struct*) ;} ;


 int EPOLLOUT ;
 int TTY_DO_WRITE_WAKEUP ;
 int stub1 (struct tty_struct*) ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_ldisc_deref (struct tty_ldisc*) ;
 struct tty_ldisc* tty_ldisc_ref (struct tty_struct*) ;
 int wake_up_interruptible_poll (int *,int ) ;

void tty_wakeup(struct tty_struct *tty)
{
 struct tty_ldisc *ld;

 if (test_bit(TTY_DO_WRITE_WAKEUP, &tty->flags)) {
  ld = tty_ldisc_ref(tty);
  if (ld) {
   if (ld->ops->write_wakeup)
    ld->ops->write_wakeup(tty);
   tty_ldisc_deref(ld);
  }
 }
 wake_up_interruptible_poll(&tty->write_wait, EPOLLOUT);
}
