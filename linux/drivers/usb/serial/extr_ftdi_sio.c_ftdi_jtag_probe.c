
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial {struct usb_interface* interface; struct usb_device* dev; } ;
struct usb_interface {int dummy; } ;
struct usb_device {int dev; TYPE_1__* actconfig; } ;
struct TYPE_2__ {struct usb_interface** interface; } ;


 int ENODEV ;
 int dev_info (int *,char*) ;

__attribute__((used)) static int ftdi_jtag_probe(struct usb_serial *serial)
{
 struct usb_device *udev = serial->dev;
 struct usb_interface *interface = serial->interface;

 if (interface == udev->actconfig->interface[0]) {
  dev_info(&udev->dev,
    "Ignoring serial port reserved for JTAG\n");
  return -ENODEV;
 }

 return 0;
}
