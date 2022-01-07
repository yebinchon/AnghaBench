
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_device {int desc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;






 int sprintf (char*,char*,char*) ;
 struct ep_device* to_ep_device (struct device*) ;
 int usb_endpoint_type (int ) ;

__attribute__((used)) static ssize_t type_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct ep_device *ep = to_ep_device(dev);
 char *type = "unknown";

 switch (usb_endpoint_type(ep->desc)) {
 case 130:
  type = "Control";
  break;
 case 128:
  type = "Isoc";
  break;
 case 131:
  type = "Bulk";
  break;
 case 129:
  type = "Interrupt";
  break;
 }
 return sprintf(buf, "%s\n", type);
}
