
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vudc {int lock; scalar_t__ desc_cached; scalar_t__ connected; scalar_t__ pullup; struct usb_gadget_driver* driver; } ;
struct usb_gadget_driver {int dummy; } ;
struct usb_gadget {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vudc* usb_gadget_to_vudc (struct usb_gadget*) ;

__attribute__((used)) static int vgadget_udc_start(struct usb_gadget *g,
  struct usb_gadget_driver *driver)
{
 struct vudc *udc = usb_gadget_to_vudc(g);
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);
 udc->driver = driver;
 udc->pullup = udc->connected = udc->desc_cached = 0;
 spin_unlock_irqrestore(&udc->lock, flags);

 return 0;
}
