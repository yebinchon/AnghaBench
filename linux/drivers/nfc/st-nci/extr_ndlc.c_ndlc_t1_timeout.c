
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct llt_ndlc {int sm_work; } ;


 struct llt_ndlc* from_timer (int ,struct timer_list*,int ) ;
 struct llt_ndlc* ndlc ;
 int pr_debug (char*) ;
 int schedule_work (int *) ;
 int t1_timer ;

__attribute__((used)) static void ndlc_t1_timeout(struct timer_list *t)
{
 struct llt_ndlc *ndlc = from_timer(ndlc, t, t1_timer);

 pr_debug("\n");

 schedule_work(&ndlc->sm_work);
}
