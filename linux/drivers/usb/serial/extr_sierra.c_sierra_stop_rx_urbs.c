
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_in_urb; } ;
struct sierra_port_private {int num_in_urbs; int * in_urbs; } ;


 struct sierra_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void sierra_stop_rx_urbs(struct usb_serial_port *port)
{
 int i;
 struct sierra_port_private *portdata = usb_get_serial_port_data(port);

 for (i = 0; i < portdata->num_in_urbs; i++)
  usb_kill_urb(portdata->in_urbs[i]);

 usb_kill_urb(port->interrupt_in_urb);
}
