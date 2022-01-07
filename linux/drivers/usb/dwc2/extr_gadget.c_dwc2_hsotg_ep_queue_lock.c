
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct dwc2_hsotg_ep {struct dwc2_hsotg* parent; } ;
struct dwc2_hsotg {int lock; } ;
typedef int gfp_t ;


 int dwc2_hsotg_ep_queue (struct usb_ep*,struct usb_request*,int ) ;
 struct dwc2_hsotg_ep* our_ep (struct usb_ep*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dwc2_hsotg_ep_queue_lock(struct usb_ep *ep, struct usb_request *req,
        gfp_t gfp_flags)
{
 struct dwc2_hsotg_ep *hs_ep = our_ep(ep);
 struct dwc2_hsotg *hs = hs_ep->parent;
 unsigned long flags = 0;
 int ret = 0;

 spin_lock_irqsave(&hs->lock, flags);
 ret = dwc2_hsotg_ep_queue(ep, req, gfp_flags);
 spin_unlock_irqrestore(&hs->lock, flags);

 return ret;
}
