
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ speed; } ;
struct usba_udc {int lock; TYPE_1__ gadget; int driver; } ;
struct usba_request {int queue; scalar_t__ last_transaction; scalar_t__ using_dma; scalar_t__ submitted; } ;
struct TYPE_4__ {scalar_t__ desc; int name; } ;
struct usba_ep {scalar_t__ state; scalar_t__ is_in; int queue; TYPE_2__ ep; scalar_t__ can_dma; struct usba_udc* udc; } ;
struct usb_request {scalar_t__ actual; int status; int length; } ;
struct usb_ep {int dummy; } ;
typedef int gfp_t ;


 int CTL_ENB ;
 scalar_t__ DATA_STAGE_IN ;
 int DBG (int,char*,int ,struct usba_request*,int ) ;
 int DBG_GADGET ;
 int DBG_QUEUE ;
 int DBG_REQ ;
 int EINPROGRESS ;
 int ESHUTDOWN ;
 scalar_t__ STATUS_STAGE_IN ;
 int USBA_RX_BK_RDY ;
 int USBA_TX_PK_RDY ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 scalar_t__ ep_is_control (struct usba_ep*) ;
 int list_add_tail (int *,int *) ;
 int queue_dma (struct usba_udc*,struct usba_ep*,struct usba_request*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct usba_ep* to_usba_ep (struct usb_ep*) ;
 struct usba_request* to_usba_req (struct usb_request*) ;
 int usba_ep_writel (struct usba_ep*,int ,int ) ;

__attribute__((used)) static int
usba_ep_queue(struct usb_ep *_ep, struct usb_request *_req, gfp_t gfp_flags)
{
 struct usba_request *req = to_usba_req(_req);
 struct usba_ep *ep = to_usba_ep(_ep);
 struct usba_udc *udc = ep->udc;
 unsigned long flags;
 int ret;

 DBG(DBG_GADGET | DBG_QUEUE | DBG_REQ, "%s: queue req %p, len %u\n",
   ep->ep.name, req, _req->length);

 if (!udc->driver || udc->gadget.speed == USB_SPEED_UNKNOWN ||
     !ep->ep.desc)
  return -ESHUTDOWN;

 req->submitted = 0;
 req->using_dma = 0;
 req->last_transaction = 0;

 _req->status = -EINPROGRESS;
 _req->actual = 0;

 if (ep->can_dma)
  return queue_dma(udc, ep, req, gfp_flags);


 ret = -ESHUTDOWN;
 spin_lock_irqsave(&udc->lock, flags);
 if (ep->ep.desc) {
  list_add_tail(&req->queue, &ep->queue);

  if ((!ep_is_control(ep) && ep->is_in) ||
   (ep_is_control(ep)
    && (ep->state == DATA_STAGE_IN
     || ep->state == STATUS_STAGE_IN)))
   usba_ep_writel(ep, CTL_ENB, USBA_TX_PK_RDY);
  else
   usba_ep_writel(ep, CTL_ENB, USBA_RX_BK_RDY);
  ret = 0;
 }
 spin_unlock_irqrestore(&udc->lock, flags);

 return ret;
}
