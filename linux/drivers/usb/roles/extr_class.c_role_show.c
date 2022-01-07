
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_role_switch {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;


 int sprintf (char*,char*,char*) ;
 struct usb_role_switch* to_role_switch (struct device*) ;
 int usb_role_switch_get_role (struct usb_role_switch*) ;
 char** usb_roles ;

__attribute__((used)) static ssize_t
role_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct usb_role_switch *sw = to_role_switch(dev);
 enum usb_role role = usb_role_switch_get_role(sw);

 return sprintf(buf, "%s\n", usb_roles[role]);
}
