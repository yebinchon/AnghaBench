
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ep {TYPE_1__* desc; } ;
struct cdns3_endpoint {int flags; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {int lock; } ;
struct TYPE_2__ {int bEndpointAddress; } ;


 int EPERM ;
 int EP_ENABLED ;
 int EP_WEDGE ;
 int __cdns3_gadget_ep_clear_halt (struct cdns3_endpoint*) ;
 int __cdns3_gadget_ep_set_halt (struct cdns3_endpoint*) ;
 int cdns3_select_ep (struct cdns3_device*,int ) ;
 struct cdns3_endpoint* ep_to_cdns3_ep (struct usb_ep*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int cdns3_gadget_ep_set_halt(struct usb_ep *ep, int value)
{
 struct cdns3_endpoint *priv_ep = ep_to_cdns3_ep(ep);
 struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
 unsigned long flags;
 int ret = 0;

 if (!(priv_ep->flags & EP_ENABLED))
  return -EPERM;

 spin_lock_irqsave(&priv_dev->lock, flags);

 cdns3_select_ep(priv_dev, ep->desc->bEndpointAddress);

 if (!value) {
  priv_ep->flags &= ~EP_WEDGE;
  ret = __cdns3_gadget_ep_clear_halt(priv_ep);
 } else {
  __cdns3_gadget_ep_set_halt(priv_ep);
 }

 spin_unlock_irqrestore(&priv_dev->lock, flags);

 return ret;
}
