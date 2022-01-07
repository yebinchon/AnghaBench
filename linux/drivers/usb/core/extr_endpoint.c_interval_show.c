
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ep_device {TYPE_1__* udev; TYPE_2__* desc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {unsigned int bEndpointAddress; unsigned int bInterval; } ;
struct TYPE_3__ {scalar_t__ speed; } ;


 unsigned int USB_DIR_IN ;




 scalar_t__ USB_SPEED_HIGH ;
 int sprintf (char*,char*,unsigned int,char) ;
 struct ep_device* to_ep_device (struct device*) ;
 int usb_endpoint_type (TYPE_2__*) ;

__attribute__((used)) static ssize_t interval_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct ep_device *ep = to_ep_device(dev);
 char unit;
 unsigned interval = 0;
 unsigned in;

 in = (ep->desc->bEndpointAddress & USB_DIR_IN);

 switch (usb_endpoint_type(ep->desc)) {
 case 130:
  if (ep->udev->speed == USB_SPEED_HIGH)

   interval = ep->desc->bInterval;
  break;

 case 128:
  interval = 1 << (ep->desc->bInterval - 1);
  break;

 case 131:
  if (ep->udev->speed == USB_SPEED_HIGH && !in)

   interval = ep->desc->bInterval;
  break;

 case 129:
  if (ep->udev->speed == USB_SPEED_HIGH)
   interval = 1 << (ep->desc->bInterval - 1);
  else
   interval = ep->desc->bInterval;
  break;
 }
 interval *= (ep->udev->speed == USB_SPEED_HIGH) ? 125 : 1000;
 if (interval % 1000)
  unit = 'u';
 else {
  unit = 'm';
  interval /= 1000;
 }

 return sprintf(buf, "%d%cs\n", interval, unit);
}
