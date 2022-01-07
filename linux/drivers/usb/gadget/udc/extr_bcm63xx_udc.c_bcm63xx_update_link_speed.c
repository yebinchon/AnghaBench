
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int speed; } ;
struct bcm63xx_udc {TYPE_1__ gadget; int dev; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;




 int USBD_STATUS_REG ;
 int USBD_STATUS_SPD_MASK ;
 int USBD_STATUS_SPD_SHIFT ;
 int USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_HIGH ;
 int USB_SPEED_UNKNOWN ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,char*) ;
 int usbd_readl (struct bcm63xx_udc*,int ) ;

__attribute__((used)) static int bcm63xx_update_link_speed(struct bcm63xx_udc *udc)
{
 u32 reg = usbd_readl(udc, USBD_STATUS_REG);
 enum usb_device_speed oldspeed = udc->gadget.speed;

 switch ((reg & USBD_STATUS_SPD_MASK) >> USBD_STATUS_SPD_SHIFT) {
 case 128:
  udc->gadget.speed = USB_SPEED_HIGH;
  break;
 case 129:
  udc->gadget.speed = USB_SPEED_FULL;
  break;
 default:

  udc->gadget.speed = USB_SPEED_UNKNOWN;
  dev_err(udc->dev,
   "received SETUP packet with invalid link speed\n");
  return 0;
 }

 if (udc->gadget.speed != oldspeed) {
  dev_info(udc->dev, "link up, %s-speed mode\n",
    udc->gadget.speed == USB_SPEED_HIGH ? "high" : "full");
  return 1;
 } else {
  return 0;
 }
}
