
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_in_urb; int * read_urbs; } ;
struct usb_serial {struct usb_serial_port** port; } ;
struct f81232_private {int lsr_work; int interrupt_work; } ;
typedef int pm_message_t ;


 int ARRAY_SIZE (int *) ;
 int flush_work (int *) ;
 struct f81232_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int f81232_suspend(struct usb_serial *serial, pm_message_t message)
{
 struct usb_serial_port *port = serial->port[0];
 struct f81232_private *port_priv = usb_get_serial_port_data(port);
 int i;

 for (i = 0; i < ARRAY_SIZE(port->read_urbs); ++i)
  usb_kill_urb(port->read_urbs[i]);

 usb_kill_urb(port->interrupt_in_urb);

 if (port_priv) {
  flush_work(&port_priv->interrupt_work);
  flush_work(&port_priv->lsr_work);
 }

 return 0;
}
