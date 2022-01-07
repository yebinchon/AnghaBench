
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; scalar_t__ stopped; scalar_t__ flow_stopped; } ;
struct TYPE_2__ {int (* start ) (struct tty_struct*) ;} ;


 int stub1 (struct tty_struct*) ;
 int tty_wakeup (struct tty_struct*) ;

void __start_tty(struct tty_struct *tty)
{
 if (!tty->stopped || tty->flow_stopped)
  return;
 tty->stopped = 0;
 if (tty->ops->start)
  tty->ops->start(tty);
 tty_wakeup(tty);
}
