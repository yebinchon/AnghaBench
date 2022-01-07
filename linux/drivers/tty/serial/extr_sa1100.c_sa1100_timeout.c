
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int lock; scalar_t__ state; } ;
struct sa1100_port {int timer; TYPE_1__ port; } ;


 scalar_t__ MCTRL_TIMEOUT ;
 struct sa1100_port* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int sa1100_mctrl_check (struct sa1100_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sa1100_port* sport ;
 int timer ;

__attribute__((used)) static void sa1100_timeout(struct timer_list *t)
{
 struct sa1100_port *sport = from_timer(sport, t, timer);
 unsigned long flags;

 if (sport->port.state) {
  spin_lock_irqsave(&sport->port.lock, flags);
  sa1100_mctrl_check(sport);
  spin_unlock_irqrestore(&sport->port.lock, flags);

  mod_timer(&sport->timer, jiffies + MCTRL_TIMEOUT);
 }
}
