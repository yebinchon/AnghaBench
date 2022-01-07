
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {scalar_t__ forced_b_device; int driver; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EBUSY ;
 size_t EINVAL ;
 size_t ENODEV ;
 struct renesas_usb3* dev_get_drvdata (struct device*) ;
 scalar_t__ sysfs_streq (char const*,char*) ;
 int usb3_is_a_device (struct renesas_usb3*) ;
 int usb3_is_host (struct renesas_usb3*) ;
 int usb3_mode_config (struct renesas_usb3*,int,int ) ;

__attribute__((used)) static ssize_t role_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct renesas_usb3 *usb3 = dev_get_drvdata(dev);
 bool new_mode_is_host;

 if (!usb3->driver)
  return -ENODEV;

 if (usb3->forced_b_device)
  return -EBUSY;

 if (sysfs_streq(buf, "host"))
  new_mode_is_host = 1;
 else if (sysfs_streq(buf, "peripheral"))
  new_mode_is_host = 0;
 else
  return -EINVAL;

 if (new_mode_is_host == usb3_is_host(usb3))
  return -EINVAL;

 usb3_mode_config(usb3, new_mode_is_host, usb3_is_a_device(usb3));

 return count;
}
