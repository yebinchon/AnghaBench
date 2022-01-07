
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int poll_time_us; } ;
struct sccnxp_port {TYPE_1__ pdata; int timer; int lock; } ;


 struct sccnxp_port* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct sccnxp_port* s ;
 int sccnxp_handle_events (struct sccnxp_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;
 scalar_t__ usecs_to_jiffies (int ) ;

__attribute__((used)) static void sccnxp_timer(struct timer_list *t)
{
 struct sccnxp_port *s = from_timer(s, t, timer);
 unsigned long flags;

 spin_lock_irqsave(&s->lock, flags);
 sccnxp_handle_events(s);
 spin_unlock_irqrestore(&s->lock, flags);

 mod_timer(&s->timer, jiffies + usecs_to_jiffies(s->pdata.poll_time_us));
}
