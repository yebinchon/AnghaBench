
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_serial {struct usb_device* dev; TYPE_1__* interface; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {int dev; } ;
struct sierra_iface_info {int dummy; } ;
struct TYPE_2__ {int num_altsetting; } ;


 int ENODEV ;
 int dev_dbg (int *,char*,int ) ;
 scalar_t__ is_blacklisted (int ,struct sierra_iface_info*) ;
 int sierra_interface_num (struct usb_serial*) ;
 int usb_set_interface (struct usb_device*,int ,int) ;

__attribute__((used)) static int sierra_probe(struct usb_serial *serial,
   const struct usb_device_id *id)
{
 int result = 0;
 struct usb_device *udev;
 u8 ifnum;

 udev = serial->dev;
 ifnum = sierra_interface_num(serial);





 if (serial->interface->num_altsetting == 2) {
  dev_dbg(&udev->dev, "Selecting alt setting for interface %d\n",
   ifnum);

  usb_set_interface(udev, ifnum, 1);
 }

 if (is_blacklisted(ifnum,
    (struct sierra_iface_info *)id->driver_info)) {
  dev_dbg(&serial->dev->dev,
   "Ignoring blacklisted interface #%d\n", ifnum);
  return -ENODEV;
 }

 return result;
}
