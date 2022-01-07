
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int read_urb; int write_urb; } ;


 int iuu_led (struct usb_serial_port*,int ,int ,int,int) ;
 int iuu_uart_off (struct usb_serial_port*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void iuu_close(struct usb_serial_port *port)
{


 iuu_uart_off(port);

 usb_kill_urb(port->write_urb);
 usb_kill_urb(port->read_urb);

 iuu_led(port, 0, 0, 0xF000, 0xFF);
}
