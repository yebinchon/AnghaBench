
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int flags; int ldisc_sem; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* close ) (struct tty_struct*) ;} ;


 int TTY_LDISC_OPEN ;
 int WARN_ON (int) ;
 int clear_bit (int ,int *) ;
 int lockdep_assert_held_write (int *) ;
 int stub1 (struct tty_struct*) ;
 int test_bit (int ,int *) ;
 int tty_ldisc_debug (struct tty_struct*,char*,struct tty_ldisc*) ;

__attribute__((used)) static void tty_ldisc_close(struct tty_struct *tty, struct tty_ldisc *ld)
{
 lockdep_assert_held_write(&tty->ldisc_sem);
 WARN_ON(!test_bit(TTY_LDISC_OPEN, &tty->flags));
 clear_bit(TTY_LDISC_OPEN, &tty->flags);
 if (ld->ops->close)
  ld->ops->close(tty);
 tty_ldisc_debug(tty, "%p: closed\n", ld);
}
