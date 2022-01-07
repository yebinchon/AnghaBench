
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int termios_rwsem; scalar_t__ flow_change; TYPE_1__* ops; int flags; } ;
struct TYPE_2__ {int (* throttle ) (struct tty_struct*) ;} ;


 int TTY_THROTTLED ;
 int down_write (int *) ;
 int stub1 (struct tty_struct*) ;
 int test_and_set_bit (int ,int *) ;
 int up_write (int *) ;

void tty_throttle(struct tty_struct *tty)
{
 down_write(&tty->termios_rwsem);

 if (!test_and_set_bit(TTY_THROTTLED, &tty->flags) &&
     tty->ops->throttle)
  tty->ops->throttle(tty);
 tty->flow_change = 0;
 up_write(&tty->termios_rwsem);
}
