
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * bus; } ;
struct usb_gadget_driver {scalar_t__ max_speed; TYPE_1__ driver; int setup; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_6__ {int of_node; } ;
struct TYPE_7__ {TYPE_2__ dev; } ;
struct bcm63xx_udc {int lock; TYPE_4__* dev; TYPE_3__ gadget; struct usb_gadget_driver* driver; } ;
struct TYPE_8__ {int of_node; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ USB_SPEED_HIGH ;
 int bcm63xx_ep_init (struct bcm63xx_udc*) ;
 int bcm63xx_ep_setup (struct bcm63xx_udc*) ;
 int bcm63xx_fifo_reset (struct bcm63xx_udc*) ;
 int bcm63xx_fifo_setup (struct bcm63xx_udc*) ;
 int bcm63xx_select_phy_mode (struct bcm63xx_udc*,int) ;
 struct bcm63xx_udc* gadget_to_udc (struct usb_gadget*) ;
 int set_clocks (struct bcm63xx_udc*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bcm63xx_udc_start(struct usb_gadget *gadget,
  struct usb_gadget_driver *driver)
{
 struct bcm63xx_udc *udc = gadget_to_udc(gadget);
 unsigned long flags;

 if (!driver || driver->max_speed < USB_SPEED_HIGH ||
     !driver->setup)
  return -EINVAL;
 if (!udc)
  return -ENODEV;
 if (udc->driver)
  return -EBUSY;

 spin_lock_irqsave(&udc->lock, flags);

 set_clocks(udc, 1);
 bcm63xx_fifo_setup(udc);
 bcm63xx_ep_init(udc);
 bcm63xx_ep_setup(udc);
 bcm63xx_fifo_reset(udc);
 bcm63xx_select_phy_mode(udc, 1);

 udc->driver = driver;
 driver->driver.bus = ((void*)0);
 udc->gadget.dev.of_node = udc->dev->of_node;

 spin_unlock_irqrestore(&udc->lock, flags);

 return 0;
}
