
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int bMaxPower; } ;
struct usb_host_config {TYPE_1__ desc; } ;
struct usb_device {scalar_t__ speed; } ;


 scalar_t__ USB_SPEED_SUPER ;

__attribute__((used)) static inline unsigned usb_get_max_power(struct usb_device *udev,
  struct usb_host_config *c)
{

 unsigned mul = (udev->speed >= USB_SPEED_SUPER ? 8 : 2);

 return c->desc.bMaxPower * mul;
}
