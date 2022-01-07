
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_in_urb; } ;
struct f81232_private {int lsr_work; int interrupt_work; } ;


 int f81232_port_disable (struct usb_serial_port*) ;
 int flush_work (int *) ;
 struct f81232_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_kill_urb (int ) ;
 int usb_serial_generic_close (struct usb_serial_port*) ;

__attribute__((used)) static void f81232_close(struct usb_serial_port *port)
{
 struct f81232_private *port_priv = usb_get_serial_port_data(port);

 f81232_port_disable(port);
 usb_serial_generic_close(port);
 usb_kill_urb(port->interrupt_in_urb);
 flush_work(&port_priv->interrupt_work);
 flush_work(&port_priv->lsr_work);
}
