
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ speed; } ;
struct usba_udc {int lock; TYPE_1__ gadget; } ;
struct TYPE_4__ {int * desc; int name; } ;
struct usba_ep {int index; scalar_t__ can_dma; int queue; TYPE_2__ ep; struct usba_udc* udc; } ;
struct usb_ep {int dummy; } ;


 int ADDRESS ;
 int CONTROL ;
 int CTL_DIS ;
 int DBG (int ,char*,int ) ;
 int DBG_ERR ;
 int DBG_GADGET ;
 int EINVAL ;
 int EPT_INT ;
 int ESHUTDOWN ;
 int LIST_HEAD (int ) ;
 int STATUS ;
 int USBA_BF (int ,int) ;
 int USBA_EPT_ENABLE ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int list_splice_init (int *,int *) ;
 int req_list ;
 int request_complete_list (struct usba_ep*,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct usba_ep* to_usba_ep (struct usb_ep*) ;
 int usba_dma_readl (struct usba_ep*,int ) ;
 int usba_dma_writel (struct usba_ep*,int ,int ) ;
 int usba_ep_writel (struct usba_ep*,int ,int ) ;
 int usba_int_enb_clear (struct usba_udc*,int ) ;

__attribute__((used)) static int usba_ep_disable(struct usb_ep *_ep)
{
 struct usba_ep *ep = to_usba_ep(_ep);
 struct usba_udc *udc = ep->udc;
 LIST_HEAD(req_list);
 unsigned long flags;

 DBG(DBG_GADGET, "ep_disable: %s\n", ep->ep.name);

 spin_lock_irqsave(&udc->lock, flags);

 if (!ep->ep.desc) {
  spin_unlock_irqrestore(&udc->lock, flags);




  if (udc->gadget.speed != USB_SPEED_UNKNOWN)
   DBG(DBG_ERR, "ep_disable: %s not enabled\n",
     ep->ep.name);
  return -EINVAL;
 }
 ep->ep.desc = ((void*)0);

 list_splice_init(&ep->queue, &req_list);
 if (ep->can_dma) {
  usba_dma_writel(ep, CONTROL, 0);
  usba_dma_writel(ep, ADDRESS, 0);
  usba_dma_readl(ep, STATUS);
 }
 usba_ep_writel(ep, CTL_DIS, USBA_EPT_ENABLE);
 usba_int_enb_clear(udc, USBA_BF(EPT_INT, 1 << ep->index));

 request_complete_list(ep, &req_list, -ESHUTDOWN);

 spin_unlock_irqrestore(&udc->lock, flags);

 return 0;
}
