
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct dwc2_hsotg_req {int dummy; } ;
struct dwc2_hsotg_ep {TYPE_1__* req; struct dwc2_hsotg* parent; } ;
struct dwc2_hsotg {int lock; int dev; } ;
struct TYPE_2__ {struct usb_request req; } ;


 int ECONNRESET ;
 int EINVAL ;
 int dev_dbg (int ,char*,struct usb_ep*,struct usb_request*) ;
 int dwc2_hsotg_complete_request (struct dwc2_hsotg*,struct dwc2_hsotg_ep*,struct dwc2_hsotg_req*,int ) ;
 int dwc2_hsotg_ep_stop_xfr (struct dwc2_hsotg*,struct dwc2_hsotg_ep*) ;
 int on_list (struct dwc2_hsotg_ep*,struct dwc2_hsotg_req*) ;
 struct dwc2_hsotg_ep* our_ep (struct usb_ep*) ;
 struct dwc2_hsotg_req* our_req (struct usb_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dwc2_hsotg_ep_dequeue(struct usb_ep *ep, struct usb_request *req)
{
 struct dwc2_hsotg_req *hs_req = our_req(req);
 struct dwc2_hsotg_ep *hs_ep = our_ep(ep);
 struct dwc2_hsotg *hs = hs_ep->parent;
 unsigned long flags;

 dev_dbg(hs->dev, "ep_dequeue(%p,%p)\n", ep, req);

 spin_lock_irqsave(&hs->lock, flags);

 if (!on_list(hs_ep, hs_req)) {
  spin_unlock_irqrestore(&hs->lock, flags);
  return -EINVAL;
 }


 if (req == &hs_ep->req->req)
  dwc2_hsotg_ep_stop_xfr(hs, hs_ep);

 dwc2_hsotg_complete_request(hs, hs_ep, hs_req, -ECONNRESET);
 spin_unlock_irqrestore(&hs->lock, flags);

 return 0;
}
