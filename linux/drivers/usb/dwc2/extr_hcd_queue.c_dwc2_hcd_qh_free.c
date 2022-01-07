
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_qh {scalar_t__ dw_align_buf; scalar_t__ desc_list; int dwc_tt; int wait_timer; int unreserve_timer; } ;
struct dwc2_hsotg {scalar_t__ unaligned_cache; int lock; } ;


 scalar_t__ del_timer_sync (int *) ;
 int dwc2_do_unreserve (struct dwc2_hsotg*,struct dwc2_qh*) ;
 int dwc2_hcd_qh_free_ddma (struct dwc2_hsotg*,struct dwc2_qh*) ;
 int dwc2_host_put_tt_info (struct dwc2_hsotg*,int ) ;
 int hrtimer_cancel (int *) ;
 int kfree (struct dwc2_qh*) ;
 int kmem_cache_free (scalar_t__,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dwc2_hcd_qh_free(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{

 if (del_timer_sync(&qh->unreserve_timer)) {
  unsigned long flags;

  spin_lock_irqsave(&hsotg->lock, flags);
  dwc2_do_unreserve(hsotg, qh);
  spin_unlock_irqrestore(&hsotg->lock, flags);
 }
 hrtimer_cancel(&qh->wait_timer);

 dwc2_host_put_tt_info(hsotg, qh->dwc_tt);

 if (qh->desc_list)
  dwc2_hcd_qh_free_ddma(hsotg, qh);
 else if (hsotg->unaligned_cache && qh->dw_align_buf)
  kmem_cache_free(hsotg->unaligned_cache, qh->dw_align_buf);

 kfree(qh);
}
