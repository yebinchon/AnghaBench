
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int sscanf (char const*,char*,unsigned int*) ;
 struct usb_device* to_usb_device (struct device*) ;
 int usb_authorize_device (struct usb_device*) ;
 int usb_deauthorize_device (struct usb_device*) ;

__attribute__((used)) static ssize_t authorized_store(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t size)
{
 ssize_t result;
 struct usb_device *usb_dev = to_usb_device(dev);
 unsigned val;
 result = sscanf(buf, "%u\n", &val);
 if (result != 1)
  result = -EINVAL;
 else if (val == 0)
  result = usb_deauthorize_device(usb_dev);
 else
  result = usb_authorize_device(usb_dev);
 return result < 0 ? result : size;
}
