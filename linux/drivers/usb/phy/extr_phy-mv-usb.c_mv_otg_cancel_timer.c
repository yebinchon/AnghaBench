
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {struct timer_list* timer; } ;
struct mv_otg {TYPE_1__ otg_ctrl; } ;


 int EINVAL ;
 unsigned int OTG_TIMER_NUM ;
 int del_timer (struct timer_list*) ;
 scalar_t__ timer_pending (struct timer_list*) ;

__attribute__((used)) static int mv_otg_cancel_timer(struct mv_otg *mvotg, unsigned int id)
{
 struct timer_list *timer;

 if (id >= OTG_TIMER_NUM)
  return -EINVAL;

 timer = &mvotg->otg_ctrl.timer[id];

 if (timer_pending(timer))
  del_timer(timer);

 return 0;
}
