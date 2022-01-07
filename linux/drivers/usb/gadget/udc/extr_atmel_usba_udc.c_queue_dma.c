
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usba_udc {int lock; int gadget; } ;
struct TYPE_4__ {int length; scalar_t__ no_interrupt; scalar_t__ short_not_ok; scalar_t__ zero; int dma; } ;
struct usba_request {int using_dma; int ctrl; int queue; TYPE_2__ req; } ;
struct TYPE_3__ {scalar_t__ desc; int name; } ;
struct usba_ep {int queue; TYPE_1__ ep; int is_in; } ;
typedef int gfp_t ;


 int DBG (int ,char*,int,...) ;
 int DBG_DMA ;
 int DBG_ERR ;
 int DMA_BUF_LEN ;
 int EINVAL ;
 int ESHUTDOWN ;
 int USBA_BF (int ,int) ;
 int USBA_DMA_CH_EN ;
 int USBA_DMA_END_BUF_EN ;
 int USBA_DMA_END_BUF_IE ;
 int USBA_DMA_END_TR_EN ;
 int USBA_DMA_END_TR_IE ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int submit_request (struct usba_ep*,struct usba_request*) ;
 int usb_gadget_map_request (int *,TYPE_2__*,int ) ;

__attribute__((used)) static int queue_dma(struct usba_udc *udc, struct usba_ep *ep,
  struct usba_request *req, gfp_t gfp_flags)
{
 unsigned long flags;
 int ret;

 DBG(DBG_DMA, "%s: req l/%u d/%pad %c%c%c\n",
  ep->ep.name, req->req.length, &req->req.dma,
  req->req.zero ? 'Z' : 'z',
  req->req.short_not_ok ? 'S' : 's',
  req->req.no_interrupt ? 'I' : 'i');

 if (req->req.length > 0x10000) {

  DBG(DBG_ERR, "invalid request length %u\n", req->req.length);
  return -EINVAL;
 }

 ret = usb_gadget_map_request(&udc->gadget, &req->req, ep->is_in);
 if (ret)
  return ret;

 req->using_dma = 1;
 req->ctrl = USBA_BF(DMA_BUF_LEN, req->req.length)
   | USBA_DMA_CH_EN | USBA_DMA_END_BUF_IE
   | USBA_DMA_END_BUF_EN;

 if (!ep->is_in)
  req->ctrl |= USBA_DMA_END_TR_EN | USBA_DMA_END_TR_IE;






 ret = -ESHUTDOWN;
 spin_lock_irqsave(&udc->lock, flags);
 if (ep->ep.desc) {
  if (list_empty(&ep->queue))
   submit_request(ep, req);

  list_add_tail(&req->queue, &ep->queue);
  ret = 0;
 }
 spin_unlock_irqrestore(&udc->lock, flags);

 return ret;
}
