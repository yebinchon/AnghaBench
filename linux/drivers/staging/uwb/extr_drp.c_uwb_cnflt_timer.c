
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_cnflt_alien {int cnflt_update_work; TYPE_1__* rc; } ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {int rsv_workq; } ;


 struct uwb_cnflt_alien* cnflt ;
 struct uwb_cnflt_alien* from_timer (int ,struct timer_list*,int ) ;
 int queue_work (int ,int *) ;
 int timer ;

__attribute__((used)) static void uwb_cnflt_timer(struct timer_list *t)
{
 struct uwb_cnflt_alien *cnflt = from_timer(cnflt, t, timer);

 queue_work(cnflt->rc->rsv_workq, &cnflt->cnflt_update_work);
}
