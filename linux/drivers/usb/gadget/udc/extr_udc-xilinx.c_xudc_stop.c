
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct xusb_udc {int lock; scalar_t__ remote_wkp; int addr; int (* write_fn ) (int ,int ,int ) ;int * driver; TYPE_1__ gadget; } ;
struct usb_gadget {int dummy; } ;


 int USB_SPEED_UNKNOWN ;
 int XUSB_ADDRESS_OFFSET ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ,int ) ;
 struct xusb_udc* to_udc (struct usb_gadget*) ;
 int xudc_stop_activity (struct xusb_udc*) ;

__attribute__((used)) static int xudc_stop(struct usb_gadget *gadget)
{
 struct xusb_udc *udc = to_udc(gadget);
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);

 udc->gadget.speed = USB_SPEED_UNKNOWN;
 udc->driver = ((void*)0);


 udc->write_fn(udc->addr, XUSB_ADDRESS_OFFSET, 0);
 udc->remote_wkp = 0;

 xudc_stop_activity(udc);

 spin_unlock_irqrestore(&udc->lock, flags);

 return 0;
}
