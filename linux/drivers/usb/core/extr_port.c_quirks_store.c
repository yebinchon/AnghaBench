
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_port {int quirks; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ kstrtou32 (char const*,int,int *) ;
 struct usb_port* to_usb_port (struct device*) ;

__attribute__((used)) static ssize_t quirks_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct usb_port *port_dev = to_usb_port(dev);
 u32 value;

 if (kstrtou32(buf, 16, &value))
  return -EINVAL;

 port_dev->quirks = value;
 return count;
}
