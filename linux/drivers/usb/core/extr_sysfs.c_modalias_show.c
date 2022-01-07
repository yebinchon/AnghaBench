
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int cur_altsetting; } ;
struct TYPE_4__ {int bInterfaceClass; int bInterfaceSubClass; int bInterfaceProtocol; int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_2__ desc; } ;
struct TYPE_3__ {int bDeviceClass; int bDeviceSubClass; int bDeviceProtocol; int bcdDevice; int idProduct; int idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct usb_host_interface* READ_ONCE (int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int le16_to_cpu (int ) ;
 int sprintf (char*,char*,int,int,int,int,int,int,int,int,int,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct usb_interface *intf;
 struct usb_device *udev;
 struct usb_host_interface *alt;

 intf = to_usb_interface(dev);
 udev = interface_to_usbdev(intf);
 alt = READ_ONCE(intf->cur_altsetting);

 return sprintf(buf, "usb:v%04Xp%04Xd%04Xdc%02Xdsc%02Xdp%02X"
   "ic%02Xisc%02Xip%02Xin%02X\n",
   le16_to_cpu(udev->descriptor.idVendor),
   le16_to_cpu(udev->descriptor.idProduct),
   le16_to_cpu(udev->descriptor.bcdDevice),
   udev->descriptor.bDeviceClass,
   udev->descriptor.bDeviceSubClass,
   udev->descriptor.bDeviceProtocol,
   alt->desc.bInterfaceClass,
   alt->desc.bInterfaceSubClass,
   alt->desc.bInterfaceProtocol,
   alt->desc.bInterfaceNumber);
}
