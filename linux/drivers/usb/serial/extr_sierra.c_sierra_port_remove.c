
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct sierra_port_private {int dummy; } ;


 int kfree (struct sierra_port_private*) ;
 struct sierra_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_set_serial_port_data (struct usb_serial_port*,int *) ;

__attribute__((used)) static int sierra_port_remove(struct usb_serial_port *port)
{
 struct sierra_port_private *portdata;

 portdata = usb_get_serial_port_data(port);
 usb_set_serial_port_data(port, ((void*)0));
 kfree(portdata);

 return 0;
}
