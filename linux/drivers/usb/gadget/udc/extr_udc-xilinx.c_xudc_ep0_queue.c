
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xusb_udc {int lock; } ;
struct xusb_req {int dummy; } ;
struct xusb_ep {struct xusb_udc* udc; } ;
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
typedef int gfp_t ;


 int __xudc_ep0_queue (struct xusb_ep*,struct xusb_req*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct xusb_ep* to_xusb_ep (struct usb_ep*) ;
 struct xusb_req* to_xusb_req (struct usb_request*) ;

__attribute__((used)) static int xudc_ep0_queue(struct usb_ep *_ep, struct usb_request *_req,
     gfp_t gfp_flags)
{
 struct xusb_req *req = to_xusb_req(_req);
 struct xusb_ep *ep0 = to_xusb_ep(_ep);
 struct xusb_udc *udc = ep0->udc;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&udc->lock, flags);
 ret = __xudc_ep0_queue(ep0, req);
 spin_unlock_irqrestore(&udc->lock, flags);

 return ret;
}
