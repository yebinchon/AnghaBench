
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct usb_composite_dev {int suspended; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct usb_gadget* dev_to_usb_gadget (struct device*) ;
 struct usb_composite_dev* get_gadget_data (struct usb_gadget*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t suspended_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct usb_gadget *gadget = dev_to_usb_gadget(dev);
 struct usb_composite_dev *cdev = get_gadget_data(gadget);

 return sprintf(buf, "%d\n", cdev->suspended);
}
