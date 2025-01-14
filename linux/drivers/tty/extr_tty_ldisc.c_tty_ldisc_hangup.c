
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int c_line; } ;
struct tty_struct {TYPE_3__ termios; scalar_t__ ldisc; TYPE_2__* driver; int read_wait; int write_wait; int flags; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int (* hangup ) (struct tty_struct*) ;int (* write_wakeup ) (struct tty_struct*) ;int (* flush_buffer ) (struct tty_struct*) ;} ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int MAX_SCHEDULE_TIMEOUT ;
 int N_NULL ;
 int N_TTY ;
 int TTY_DO_WRITE_WAKEUP ;
 int TTY_DRIVER_RESET_TERMIOS ;
 int WARN_ON (int) ;
 int stub1 (struct tty_struct*) ;
 int stub2 (struct tty_struct*) ;
 int stub3 (struct tty_struct*) ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_driver_flush_buffer (struct tty_struct*) ;
 int tty_ldisc_debug (struct tty_struct*,char*,scalar_t__) ;
 int tty_ldisc_deref (struct tty_ldisc*) ;
 int tty_ldisc_kill (struct tty_struct*) ;
 int tty_ldisc_lock (struct tty_struct*,int ) ;
 struct tty_ldisc* tty_ldisc_ref (struct tty_struct*) ;
 scalar_t__ tty_ldisc_reinit (struct tty_struct*,int ) ;
 int tty_ldisc_unlock (struct tty_struct*) ;
 int tty_reset_termios (struct tty_struct*) ;
 int wake_up_interruptible_poll (int *,int ) ;

void tty_ldisc_hangup(struct tty_struct *tty, bool reinit)
{
 struct tty_ldisc *ld;

 tty_ldisc_debug(tty, "%p: hangup\n", tty->ldisc);

 ld = tty_ldisc_ref(tty);
 if (ld != ((void*)0)) {
  if (ld->ops->flush_buffer)
   ld->ops->flush_buffer(tty);
  tty_driver_flush_buffer(tty);
  if ((test_bit(TTY_DO_WRITE_WAKEUP, &tty->flags)) &&
      ld->ops->write_wakeup)
   ld->ops->write_wakeup(tty);
  if (ld->ops->hangup)
   ld->ops->hangup(tty);
  tty_ldisc_deref(ld);
 }

 wake_up_interruptible_poll(&tty->write_wait, EPOLLOUT);
 wake_up_interruptible_poll(&tty->read_wait, EPOLLIN);







 tty_ldisc_lock(tty, MAX_SCHEDULE_TIMEOUT);

 if (tty->driver->flags & TTY_DRIVER_RESET_TERMIOS)
  tty_reset_termios(tty);

 if (tty->ldisc) {
  if (reinit) {
   if (tty_ldisc_reinit(tty, tty->termios.c_line) < 0 &&
       tty_ldisc_reinit(tty, N_TTY) < 0)
    WARN_ON(tty_ldisc_reinit(tty, N_NULL) < 0);
  } else
   tty_ldisc_kill(tty);
 }
 tty_ldisc_unlock(tty);
}
