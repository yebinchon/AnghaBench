
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct fcoe_ctlr {int timer_work; } ;


 struct fcoe_ctlr* fip ;
 struct fcoe_ctlr* from_timer (int ,struct timer_list*,int ) ;
 int schedule_work (int *) ;
 int timer ;

__attribute__((used)) static void fcoe_ctlr_timeout(struct timer_list *t)
{
 struct fcoe_ctlr *fip = from_timer(fip, t, timer);

 schedule_work(&fip->timer_work);
}
