
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_port {int location; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct usb_port* to_usb_port (struct device*) ;

__attribute__((used)) static ssize_t location_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct usb_port *port_dev = to_usb_port(dev);

 return sprintf(buf, "0x%08x\n", port_dev->location);
}
