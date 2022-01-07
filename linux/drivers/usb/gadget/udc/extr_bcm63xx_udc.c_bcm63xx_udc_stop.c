
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct bcm63xx_udc {int lock; int * driver; } ;


 int bcm63xx_select_phy_mode (struct bcm63xx_udc*,int) ;
 struct bcm63xx_udc* gadget_to_udc (struct usb_gadget*) ;
 int msleep (int) ;
 int set_clocks (struct bcm63xx_udc*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bcm63xx_udc_stop(struct usb_gadget *gadget)
{
 struct bcm63xx_udc *udc = gadget_to_udc(gadget);
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);

 udc->driver = ((void*)0);







 msleep(100);

 bcm63xx_select_phy_mode(udc, 0);
 set_clocks(udc, 0);

 spin_unlock_irqrestore(&udc->lock, flags);

 return 0;
}
