
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct TYPE_2__ {int speed; } ;
struct bcm63xx_udc {scalar_t__ ep0state; int ep0_req_shutdown; int lock; int ep0_wq; int * bep; int wedgemap; TYPE_1__ gadget; } ;


 int BCM63XX_NUM_EP ;
 int EINVAL ;
 scalar_t__ EP0_REQUEUE ;
 scalar_t__ EP0_SHUTDOWN ;
 int USB_SPEED_UNKNOWN ;
 int bcm63xx_ep_setup (struct bcm63xx_udc*) ;
 int bcm63xx_fifo_reset (struct bcm63xx_udc*) ;
 int bcm63xx_fifo_setup (struct bcm63xx_udc*) ;
 int bcm63xx_select_pullup (struct bcm63xx_udc*,int) ;
 int bcm63xx_set_ctrl_irqs (struct bcm63xx_udc*,int) ;
 int bcm63xx_set_stall (struct bcm63xx_udc*,int *,int) ;
 int bitmap_zero (int *,int) ;
 int cancel_work_sync (int *) ;
 struct bcm63xx_udc* gadget_to_udc (struct usb_gadget*) ;
 int msleep (int) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bcm63xx_udc_pullup(struct usb_gadget *gadget, int is_on)
{
 struct bcm63xx_udc *udc = gadget_to_udc(gadget);
 unsigned long flags;
 int i, rc = -EINVAL;

 spin_lock_irqsave(&udc->lock, flags);
 if (is_on && udc->ep0state == EP0_SHUTDOWN) {
  udc->gadget.speed = USB_SPEED_UNKNOWN;
  udc->ep0state = EP0_REQUEUE;
  bcm63xx_fifo_setup(udc);
  bcm63xx_fifo_reset(udc);
  bcm63xx_ep_setup(udc);

  bitmap_zero(&udc->wedgemap, BCM63XX_NUM_EP);
  for (i = 0; i < BCM63XX_NUM_EP; i++)
   bcm63xx_set_stall(udc, &udc->bep[i], 0);

  bcm63xx_set_ctrl_irqs(udc, 1);
  bcm63xx_select_pullup(gadget_to_udc(gadget), 1);
  rc = 0;
 } else if (!is_on && udc->ep0state != EP0_SHUTDOWN) {
  bcm63xx_select_pullup(gadget_to_udc(gadget), 0);

  udc->ep0_req_shutdown = 1;
  spin_unlock_irqrestore(&udc->lock, flags);

  while (1) {
   schedule_work(&udc->ep0_wq);
   if (udc->ep0state == EP0_SHUTDOWN)
    break;
   msleep(50);
  }
  bcm63xx_set_ctrl_irqs(udc, 0);
  cancel_work_sync(&udc->ep0_wq);
  return 0;
 }

 spin_unlock_irqrestore(&udc->lock, flags);
 return rc;
}
