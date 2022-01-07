
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_port {scalar_t__ child; } ;
struct device {int dummy; } ;


 struct usb_port* to_usb_port (struct device*) ;
 int usb_disable_usb2_hardware_lpm (scalar_t__) ;

__attribute__((used)) static void usb_port_shutdown(struct device *dev)
{
 struct usb_port *port_dev = to_usb_port(dev);

 if (port_dev->child)
  usb_disable_usb2_hardware_lpm(port_dev->child);
}
