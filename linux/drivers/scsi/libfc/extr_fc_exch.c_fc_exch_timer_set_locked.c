
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_exch {int state; int timeout_work; } ;


 int FC_EXCH_DBG (struct fc_exch*,char*,...) ;
 int FC_EX_DONE ;
 int FC_EX_RST_CLEANUP ;
 int fc_exch_hold (struct fc_exch*) ;
 int fc_exch_release (struct fc_exch*) ;
 int fc_exch_workqueue ;
 int msecs_to_jiffies (unsigned int) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static inline void fc_exch_timer_set_locked(struct fc_exch *ep,
         unsigned int timer_msec)
{
 if (ep->state & (FC_EX_RST_CLEANUP | FC_EX_DONE))
  return;

 FC_EXCH_DBG(ep, "Exchange timer armed : %d msecs\n", timer_msec);

 fc_exch_hold(ep);
 if (!queue_delayed_work(fc_exch_workqueue, &ep->timeout_work,
    msecs_to_jiffies(timer_msec))) {
  FC_EXCH_DBG(ep, "Exchange already queued\n");
  fc_exch_release(ep);
 }
}
