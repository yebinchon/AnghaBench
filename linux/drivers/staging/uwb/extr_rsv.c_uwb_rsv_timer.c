
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_rsv {int handle_timeout_work; TYPE_1__* rc; } ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {int rsv_workq; } ;


 struct uwb_rsv* from_timer (int ,struct timer_list*,int ) ;
 int queue_work (int ,int *) ;
 struct uwb_rsv* rsv ;
 int timer ;

__attribute__((used)) static void uwb_rsv_timer(struct timer_list *t)
{
 struct uwb_rsv *rsv = from_timer(rsv, t, timer);

 queue_work(rsv->rc->rsv_workq, &rsv->handle_timeout_work);
}
