
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int port_number; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct usb_serial_port* to_usb_serial_port (struct device*) ;

__attribute__((used)) static ssize_t port_number_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct usb_serial_port *port = to_usb_serial_port(dev);

 return sprintf(buf, "%u\n", port->port_number);
}
