
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {scalar_t__ status; scalar_t__ actual; int buf; int complete; } ;
struct usb_ep {int dummy; } ;
struct bcm63xx_udc {int lock; int gadget; int ep0_wq; struct usb_request* ep0_reply; struct bcm63xx_ep* bep; } ;
struct bcm63xx_req {int queue; scalar_t__ offset; } ;
struct bcm63xx_ep {TYPE_1__* iudma; int queue; struct bcm63xx_udc* udc; } ;
typedef int gfp_t ;
struct TYPE_2__ {int is_tx; int enabled; } ;


 int EINVAL ;
 int ESHUTDOWN ;
 int iudma_write (struct bcm63xx_udc*,TYPE_1__*,struct bcm63xx_req*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_is_singular (int *) ;
 struct bcm63xx_ep* our_ep (struct usb_ep*) ;
 struct bcm63xx_req* our_req (struct usb_request*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int usb_gadget_map_request (int *,struct usb_request*,int ) ;

__attribute__((used)) static int bcm63xx_udc_queue(struct usb_ep *ep, struct usb_request *req,
 gfp_t mem_flags)
{
 struct bcm63xx_ep *bep = our_ep(ep);
 struct bcm63xx_udc *udc = bep->udc;
 struct bcm63xx_req *breq = our_req(req);
 unsigned long flags;
 int rc = 0;

 if (unlikely(!req || !req->complete || !req->buf || !ep))
  return -EINVAL;

 req->actual = 0;
 req->status = 0;
 breq->offset = 0;

 if (bep == &udc->bep[0]) {

  if (udc->ep0_reply)
   return -EINVAL;

  udc->ep0_reply = req;
  schedule_work(&udc->ep0_wq);
  return 0;
 }

 spin_lock_irqsave(&udc->lock, flags);
 if (!bep->iudma->enabled) {
  rc = -ESHUTDOWN;
  goto out;
 }

 rc = usb_gadget_map_request(&udc->gadget, req, bep->iudma->is_tx);
 if (rc == 0) {
  list_add_tail(&breq->queue, &bep->queue);
  if (list_is_singular(&bep->queue))
   iudma_write(udc, bep->iudma, breq);
 }

out:
 spin_unlock_irqrestore(&udc->lock, flags);
 return rc;
}
