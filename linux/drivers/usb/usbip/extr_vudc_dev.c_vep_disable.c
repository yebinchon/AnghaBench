
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vudc {int lock; } ;
struct vep {int * desc; } ;
struct TYPE_2__ {scalar_t__ type_control; } ;
struct usb_ep {TYPE_1__ caps; } ;


 int EINVAL ;
 struct vudc* ep_to_vudc (struct vep*) ;
 int nuke (struct vudc*,struct vep*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vep* to_vep (struct usb_ep*) ;

__attribute__((used)) static int vep_disable(struct usb_ep *_ep)
{
 struct vep *ep;
 struct vudc *udc;
 unsigned long flags;

 ep = to_vep(_ep);
 udc = ep_to_vudc(ep);
 if (!_ep || !ep->desc || _ep->caps.type_control)
  return -EINVAL;

 spin_lock_irqsave(&udc->lock, flags);
 ep->desc = ((void*)0);
 nuke(udc, ep);
 spin_unlock_irqrestore(&udc->lock, flags);

 return 0;
}
