
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct dwc3_request {int dummy; } ;
struct TYPE_2__ {int desc; } ;
struct dwc3_ep {int pending_list; int name; TYPE_1__ endpoint; struct dwc3* dwc; } ;
struct dwc3 {int lock; int dev; } ;
typedef int gfp_t ;


 int EBUSY ;
 int ESHUTDOWN ;
 int __dwc3_gadget_ep0_queue (struct dwc3_ep*,struct dwc3_request*) ;
 int dev_err (int ,char*,int ) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dwc3_ep* to_dwc3_ep (struct usb_ep*) ;
 struct dwc3_request* to_dwc3_request (struct usb_request*) ;

int dwc3_gadget_ep0_queue(struct usb_ep *ep, struct usb_request *request,
  gfp_t gfp_flags)
{
 struct dwc3_request *req = to_dwc3_request(request);
 struct dwc3_ep *dep = to_dwc3_ep(ep);
 struct dwc3 *dwc = dep->dwc;

 unsigned long flags;

 int ret;

 spin_lock_irqsave(&dwc->lock, flags);
 if (!dep->endpoint.desc) {
  dev_err(dwc->dev, "%s: can't queue to disabled endpoint\n",
    dep->name);
  ret = -ESHUTDOWN;
  goto out;
 }


 if (!list_empty(&dep->pending_list)) {
  ret = -EBUSY;
  goto out;
 }

 ret = __dwc3_gadget_ep0_queue(dep, req);

out:
 spin_unlock_irqrestore(&dwc->lock, flags);

 return ret;
}
