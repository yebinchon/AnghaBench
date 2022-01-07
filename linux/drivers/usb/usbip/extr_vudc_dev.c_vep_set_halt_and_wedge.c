
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vudc {int lock; int driver; } ;
struct vep {int halted; int wedged; int req_queue; TYPE_1__* desc; } ;
struct usb_ep {int dummy; } ;
struct TYPE_2__ {int bEndpointAddress; } ;


 int EAGAIN ;
 int EINVAL ;
 int ESHUTDOWN ;
 int USB_DIR_IN ;
 struct vudc* ep_to_vudc (struct vep*) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vep* to_vep (struct usb_ep*) ;

__attribute__((used)) static int
vep_set_halt_and_wedge(struct usb_ep *_ep, int value, int wedged)
{
 struct vep *ep;
 struct vudc *udc;
 unsigned long flags;
 int ret = 0;

 ep = to_vep(_ep);
 if (!_ep)
  return -EINVAL;

 udc = ep_to_vudc(ep);
 if (!udc->driver)
  return -ESHUTDOWN;

 spin_lock_irqsave(&udc->lock, flags);
 if (!value)
  ep->halted = ep->wedged = 0;
 else if (ep->desc && (ep->desc->bEndpointAddress & USB_DIR_IN) &&
   !list_empty(&ep->req_queue))
  ret = -EAGAIN;
 else {
  ep->halted = 1;
  if (wedged)
   ep->wedged = 1;
 }

 spin_unlock_irqrestore(&udc->lock, flags);
 return ret;
}
