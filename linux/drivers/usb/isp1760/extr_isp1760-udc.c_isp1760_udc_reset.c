
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct isp1760_udc {int lock; int driver; TYPE_1__ gadget; int ep0_state; } ;


 int ISP1760_CTRL_SETUP ;
 int USB_SPEED_FULL ;
 int isp1760_udc_init_hw (struct isp1760_udc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_gadget_udc_reset (TYPE_1__*,int ) ;

__attribute__((used)) static void isp1760_udc_reset(struct isp1760_udc *udc)
{
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);





 isp1760_udc_init_hw(udc);

 udc->ep0_state = ISP1760_CTRL_SETUP;
 udc->gadget.speed = USB_SPEED_FULL;

 usb_gadget_udc_reset(&udc->gadget, udc->driver);

 spin_unlock_irqrestore(&udc->lock, flags);
}
