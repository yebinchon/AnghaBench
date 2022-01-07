
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct usb_ctrlrequest {int bRequestType; int wLength; int wIndex; int wValue; int bRequest; } ;
struct pxa_udc {int gadget; TYPE_1__* driver; struct pxa_ep* pxa_ep; } ;
struct pxa_ep {int lock; } ;
struct pxa27x_request {int dummy; } ;
struct TYPE_2__ {int (* setup ) (int *,struct usb_ctrlrequest*) ;} ;


 int EPROTO ;
 int IN_DATA_STAGE ;
 int OUT_DATA_STAGE ;
 int STALL ;
 int UDCCSR ;
 int UDCCSR0_FST ;
 int UDCCSR0_FTF ;
 int UDCCSR0_OPC ;
 int UDCCSR0_SA ;
 int UDCDR ;
 int USB_DIR_IN ;
 scalar_t__ ep_count_bytes_remain (struct pxa_ep*) ;
 int ep_dbg (struct pxa_ep*,char*,void*,int,...) ;
 int ep_err (struct pxa_ep*,char*,int) ;
 int ep_is_empty (struct pxa_ep*) ;
 int ep_write_UDCCSR (struct pxa_ep*,int) ;
 scalar_t__ epout_has_pkt (struct pxa_ep*) ;
 int le16_to_cpu (int ) ;
 int nuke (struct pxa_ep*,int ) ;
 int set_ep0state (struct pxa_udc*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int *,struct usb_ctrlrequest*) ;
 void* udc_ep_readl (struct pxa_ep*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void handle_ep0_ctrl_req(struct pxa_udc *udc,
    struct pxa27x_request *req)
{
 struct pxa_ep *ep = &udc->pxa_ep[0];
 union {
  struct usb_ctrlrequest r;
  u32 word[2];
 } u;
 int i;
 int have_extrabytes = 0;
 unsigned long flags;

 nuke(ep, -EPROTO);
 spin_lock_irqsave(&ep->lock, flags);







 if (epout_has_pkt(ep) && (ep_count_bytes_remain(ep) == 0))
  ep_write_UDCCSR(ep, UDCCSR0_OPC);


 for (i = 0; i < 2; i++) {
  if (unlikely(ep_is_empty(ep)))
   goto stall;
  u.word[i] = udc_ep_readl(ep, UDCDR);
 }

 have_extrabytes = !ep_is_empty(ep);
 while (!ep_is_empty(ep)) {
  i = udc_ep_readl(ep, UDCDR);
  ep_err(ep, "wrong to have extra bytes for setup : 0x%08x\n", i);
 }

 ep_dbg(ep, "SETUP %02x.%02x v%04x i%04x l%04x\n",
  u.r.bRequestType, u.r.bRequest,
  le16_to_cpu(u.r.wValue), le16_to_cpu(u.r.wIndex),
  le16_to_cpu(u.r.wLength));
 if (unlikely(have_extrabytes))
  goto stall;

 if (u.r.bRequestType & USB_DIR_IN)
  set_ep0state(udc, IN_DATA_STAGE);
 else
  set_ep0state(udc, OUT_DATA_STAGE);


 ep_write_UDCCSR(ep, UDCCSR0_SA | UDCCSR0_OPC);

 spin_unlock_irqrestore(&ep->lock, flags);
 i = udc->driver->setup(&udc->gadget, &u.r);
 spin_lock_irqsave(&ep->lock, flags);
 if (i < 0)
  goto stall;
out:
 spin_unlock_irqrestore(&ep->lock, flags);
 return;
stall:
 ep_dbg(ep, "protocol STALL, udccsr0=%03x err %d\n",
  udc_ep_readl(ep, UDCCSR), i);
 ep_write_UDCCSR(ep, UDCCSR0_FST | UDCCSR0_FTF);
 set_ep0state(udc, STALL);
 goto out;
}
