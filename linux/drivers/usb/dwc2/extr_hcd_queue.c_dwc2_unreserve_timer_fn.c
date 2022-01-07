
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct dwc2_qh {scalar_t__ unreserve_pending; int unreserve_timer; struct dwc2_hsotg* hsotg; } ;
struct dwc2_hsotg {int lock; } ;


 int dwc2_do_unreserve (struct dwc2_hsotg*,struct dwc2_qh*) ;
 struct dwc2_qh* from_timer (int ,struct timer_list*,int ) ;
 struct dwc2_qh* qh ;
 int spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ timer_pending (int *) ;
 int unreserve_timer ;

__attribute__((used)) static void dwc2_unreserve_timer_fn(struct timer_list *t)
{
 struct dwc2_qh *qh = from_timer(qh, t, unreserve_timer);
 struct dwc2_hsotg *hsotg = qh->hsotg;
 unsigned long flags;
 while (!spin_trylock_irqsave(&hsotg->lock, flags)) {
  if (timer_pending(&qh->unreserve_timer))
   return;
 }
 if (qh->unreserve_pending)
  dwc2_do_unreserve(hsotg, qh);

 spin_unlock_irqrestore(&hsotg->lock, flags);
}
