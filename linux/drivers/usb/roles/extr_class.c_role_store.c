
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_role_switch {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int kstrtobool (char const*,int*) ;
 int sysfs_match_string (int ,char const*) ;
 struct usb_role_switch* to_role_switch (struct device*) ;
 int usb_role_switch_set_role (struct usb_role_switch*,int) ;
 int usb_roles ;

__attribute__((used)) static ssize_t role_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t size)
{
 struct usb_role_switch *sw = to_role_switch(dev);
 int ret;

 ret = sysfs_match_string(usb_roles, buf);
 if (ret < 0) {
  bool res;


  ret = kstrtobool(buf, &res);
  if (ret || res)
   return -EINVAL;
 }

 ret = usb_role_switch_set_role(sw, ret);
 if (ret)
  return ret;

 return size;
}
