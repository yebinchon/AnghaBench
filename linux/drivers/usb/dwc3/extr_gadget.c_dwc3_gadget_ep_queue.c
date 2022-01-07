
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct dwc3_request {int dummy; } ;
struct dwc3_ep {struct dwc3* dwc; } ;
struct dwc3 {int lock; } ;
typedef int gfp_t ;


 int __dwc3_gadget_ep_queue (struct dwc3_ep*,struct dwc3_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dwc3_ep* to_dwc3_ep (struct usb_ep*) ;
 struct dwc3_request* to_dwc3_request (struct usb_request*) ;

__attribute__((used)) static int dwc3_gadget_ep_queue(struct usb_ep *ep, struct usb_request *request,
 gfp_t gfp_flags)
{
 struct dwc3_request *req = to_dwc3_request(request);
 struct dwc3_ep *dep = to_dwc3_ep(ep);
 struct dwc3 *dwc = dep->dwc;

 unsigned long flags;

 int ret;

 spin_lock_irqsave(&dwc->lock, flags);
 ret = __dwc3_gadget_ep_queue(dep, req);
 spin_unlock_irqrestore(&dwc->lock, flags);

 return ret;
}
