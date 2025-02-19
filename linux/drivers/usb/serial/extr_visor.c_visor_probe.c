
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_serial {TYPE_4__* dev; } ;
struct usb_device_id {scalar_t__ idVendor; scalar_t__ idProduct; scalar_t__ driver_info; } ;
struct TYPE_5__ {scalar_t__ bDeviceClass; scalar_t__ bDeviceSubClass; } ;
struct TYPE_8__ {TYPE_3__* actconfig; int dev; TYPE_1__ descriptor; } ;
struct TYPE_6__ {int bConfigurationValue; } ;
struct TYPE_7__ {TYPE_2__ desc; } ;


 int ENODEV ;
 scalar_t__ SAMSUNG_SPH_I500_ID ;
 scalar_t__ SAMSUNG_VENDOR_ID ;
 scalar_t__ USB_CDC_SUBCLASS_ACM ;
 scalar_t__ USB_CLASS_COMM ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static int visor_probe(struct usb_serial *serial,
     const struct usb_device_id *id)
{
 int retval = 0;
 int (*startup)(struct usb_serial *serial,
     const struct usb_device_id *id);





 if (id->idVendor == SAMSUNG_VENDOR_ID &&
  id->idProduct == SAMSUNG_SPH_I500_ID &&
  serial->dev->descriptor.bDeviceClass == USB_CLASS_COMM &&
  serial->dev->descriptor.bDeviceSubClass ==
   USB_CDC_SUBCLASS_ACM)
  return -ENODEV;

 if (serial->dev->actconfig->desc.bConfigurationValue != 1) {
  dev_err(&serial->dev->dev, "active config #%d != 1 ??\n",
   serial->dev->actconfig->desc.bConfigurationValue);
  return -ENODEV;
 }

 if (id->driver_info) {
  startup = (void *)id->driver_info;
  retval = startup(serial, id);
 }

 return retval;
}
