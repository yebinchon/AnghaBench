
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_in_urb; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;


 int UART_FCR ;
 int UART_IER ;
 int ark3116_write_reg (struct usb_serial*,int ,int ) ;
 int usb_kill_urb (int ) ;
 int usb_serial_generic_close (struct usb_serial_port*) ;

__attribute__((used)) static void ark3116_close(struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;


 ark3116_write_reg(serial, UART_FCR, 0);


 ark3116_write_reg(serial, UART_IER, 0);

 usb_serial_generic_close(port);

 usb_kill_urb(port->interrupt_in_urb);
}
