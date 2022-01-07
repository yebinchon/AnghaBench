
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int stopped; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* stop ) (struct tty_struct*) ;} ;


 int stub1 (struct tty_struct*) ;

void __stop_tty(struct tty_struct *tty)
{
 if (tty->stopped)
  return;
 tty->stopped = 1;
 if (tty->ops->stop)
  tty->ops->stop(tty);
}
