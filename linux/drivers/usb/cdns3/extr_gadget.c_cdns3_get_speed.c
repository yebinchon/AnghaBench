
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cdns3_device {TYPE_1__* regs; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_2__ {int usb_sts; } ;


 scalar_t__ DEV_FULLSPEED (int ) ;
 scalar_t__ DEV_HIGHSPEED (int ) ;
 scalar_t__ DEV_LOWSPEED (int ) ;
 scalar_t__ DEV_SUPERSPEED (int ) ;
 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_LOW ;
 int USB_SPEED_SUPER ;
 int USB_SPEED_UNKNOWN ;
 int readl (int *) ;

enum usb_device_speed cdns3_get_speed(struct cdns3_device *priv_dev)
{
 u32 reg;

 reg = readl(&priv_dev->regs->usb_sts);

 if (DEV_SUPERSPEED(reg))
  return USB_SPEED_SUPER;
 else if (DEV_HIGHSPEED(reg))
  return USB_SPEED_HIGH;
 else if (DEV_FULLSPEED(reg))
  return USB_SPEED_FULL;
 else if (DEV_LOWSPEED(reg))
  return USB_SPEED_LOW;
 return USB_SPEED_UNKNOWN;
}
