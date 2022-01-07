
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ktermios {int dummy; } ;
struct tty_struct {int termios_rwsem; struct ktermios termios; TYPE_2__* ops; TYPE_1__* driver; } ;
struct tty_ldisc {TYPE_3__* ops; } ;
struct TYPE_6__ {int (* set_termios ) (struct tty_struct*,struct ktermios*) ;} ;
struct TYPE_5__ {int (* set_termios ) (struct tty_struct*,struct ktermios*) ;} ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ subtype; } ;


 scalar_t__ PTY_TYPE_MASTER ;
 scalar_t__ TTY_DRIVER_TYPE_PTY ;
 int WARN_ON (int) ;
 int down_write (int *) ;
 int stub1 (struct tty_struct*,struct ktermios*) ;
 int stub2 (struct tty_struct*,struct ktermios*) ;
 int tty_ldisc_deref (struct tty_ldisc*) ;
 struct tty_ldisc* tty_ldisc_ref (struct tty_struct*) ;
 int tty_termios_copy_hw (struct ktermios*,struct ktermios*) ;
 int unset_locked_termios (struct tty_struct*,struct ktermios*) ;
 int up_write (int *) ;

int tty_set_termios(struct tty_struct *tty, struct ktermios *new_termios)
{
 struct ktermios old_termios;
 struct tty_ldisc *ld;

 WARN_ON(tty->driver->type == TTY_DRIVER_TYPE_PTY &&
  tty->driver->subtype == PTY_TYPE_MASTER);







 down_write(&tty->termios_rwsem);
 old_termios = tty->termios;
 tty->termios = *new_termios;
 unset_locked_termios(tty, &old_termios);

 if (tty->ops->set_termios)
  tty->ops->set_termios(tty, &old_termios);
 else
  tty_termios_copy_hw(&tty->termios, &old_termios);

 ld = tty_ldisc_ref(tty);
 if (ld != ((void*)0)) {
  if (ld->ops->set_termios)
   ld->ops->set_termios(tty, &old_termios);
  tty_ldisc_deref(ld);
 }
 up_write(&tty->termios_rwsem);
 return 0;
}
