
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int bcdUSB; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int le16_to_cpu (int ) ;
 int sprintf (char*,char*,int,int) ;
 struct usb_device* to_usb_device (struct device*) ;

__attribute__((used)) static ssize_t version_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct usb_device *udev;
 u16 bcdUSB;

 udev = to_usb_device(dev);
 bcdUSB = le16_to_cpu(udev->descriptor.bcdUSB);
 return sprintf(buf, "%2x.%02x\n", bcdUSB >> 8, bcdUSB & 0xff);
}
