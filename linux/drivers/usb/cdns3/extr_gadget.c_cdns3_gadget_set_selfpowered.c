
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct cdns3_device {int is_selfpowered; int lock; } ;


 struct cdns3_device* gadget_to_cdns3_device (struct usb_gadget*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cdns3_gadget_set_selfpowered(struct usb_gadget *gadget,
     int is_selfpowered)
{
 struct cdns3_device *priv_dev = gadget_to_cdns3_device(gadget);
 unsigned long flags;

 spin_lock_irqsave(&priv_dev->lock, flags);
 priv_dev->is_selfpowered = !!is_selfpowered;
 spin_unlock_irqrestore(&priv_dev->lock, flags);
 return 0;
}
