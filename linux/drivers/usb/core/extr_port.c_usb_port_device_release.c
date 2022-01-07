
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_port {struct usb_port* req; } ;
struct device {int dummy; } ;


 int kfree (struct usb_port*) ;
 struct usb_port* to_usb_port (struct device*) ;

__attribute__((used)) static void usb_port_device_release(struct device *dev)
{
 struct usb_port *port_dev = to_usb_port(dev);

 kfree(port_dev->req);
 kfree(port_dev);
}
