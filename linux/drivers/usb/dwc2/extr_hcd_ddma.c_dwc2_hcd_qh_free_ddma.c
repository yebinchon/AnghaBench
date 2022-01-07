
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc2_qh {scalar_t__ ep_type; scalar_t__ channel; } ;
struct TYPE_2__ {scalar_t__ uframe_sched; } ;
struct dwc2_hsotg {scalar_t__ frame_list; int periodic_channels; TYPE_1__ params; int lock; } ;


 scalar_t__ USB_ENDPOINT_XFER_INT ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 int dwc2_desc_list_free (struct dwc2_hsotg*,struct dwc2_qh*) ;
 int dwc2_frame_list_free (struct dwc2_hsotg*) ;
 int dwc2_per_sched_disable (struct dwc2_hsotg*) ;
 int dwc2_release_channel_ddma (struct dwc2_hsotg*,struct dwc2_qh*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dwc2_hcd_qh_free_ddma(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{
 unsigned long flags;

 dwc2_desc_list_free(hsotg, qh);
 spin_lock_irqsave(&hsotg->lock, flags);
 if (qh->channel)
  dwc2_release_channel_ddma(hsotg, qh);
 spin_unlock_irqrestore(&hsotg->lock, flags);

 if ((qh->ep_type == USB_ENDPOINT_XFER_ISOC ||
      qh->ep_type == USB_ENDPOINT_XFER_INT) &&
     (hsotg->params.uframe_sched ||
      !hsotg->periodic_channels) && hsotg->frame_list) {
  dwc2_per_sched_disable(hsotg);
  dwc2_frame_list_free(hsotg);
 }
}
