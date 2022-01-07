
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_port {int connect_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;





 int sprintf (char*,char*,char*) ;
 struct usb_port* to_usb_port (struct device*) ;

__attribute__((used)) static ssize_t connect_type_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct usb_port *port_dev = to_usb_port(dev);
 char *result;

 switch (port_dev->connect_type) {
 case 129:
  result = "hotplug";
  break;
 case 130:
  result = "hardwired";
  break;
 case 128:
  result = "not used";
  break;
 default:
  result = "unknown";
  break;
 }

 return sprintf(buf, "%s\n", result);
}
