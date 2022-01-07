
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device_descriptor {int bDeviceClass; int bNumConfigurations; } ;
struct TYPE_3__ {int of_node; } ;
struct usb_device {TYPE_2__* config; TYPE_1__ dev; struct usb_device_descriptor descriptor; } ;
struct usb_config_descriptor {int bNumInterfaces; } ;
struct TYPE_4__ {struct usb_config_descriptor desc; } ;





bool usb_of_has_combined_node(struct usb_device *udev)
{
 struct usb_device_descriptor *ddesc = &udev->descriptor;
 struct usb_config_descriptor *cdesc;

 if (!udev->dev.of_node)
  return 0;

 switch (ddesc->bDeviceClass) {
 case 128:
 case 129:
  if (ddesc->bNumConfigurations == 1) {
   cdesc = &udev->config->desc;
   if (cdesc->bNumInterfaces == 1)
    return 1;
  }
 }

 return 0;
}
