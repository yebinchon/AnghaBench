
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_configuration {int MaxPower; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;


 unsigned int CONFIG_USB_GADGET_VBUS_DRAW ;
 int DIV_ROUND_UP (unsigned int,int) ;


__attribute__((used)) static u8 encode_bMaxPower(enum usb_device_speed speed,
  struct usb_configuration *c)
{
 unsigned val;

 if (c->MaxPower)
  val = c->MaxPower;
 else
  val = CONFIG_USB_GADGET_VBUS_DRAW;
 if (!val)
  return 0;
 switch (speed) {
 case 128:
  return DIV_ROUND_UP(val, 8);
 default:
  return DIV_ROUND_UP(val, 2);
 }
}
