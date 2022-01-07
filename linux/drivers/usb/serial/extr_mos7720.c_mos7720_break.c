
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int port_number; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct moschip_port {unsigned char shadowLCR; } ;


 int MOS7720_LCR ;
 unsigned char UART_LCR_SBC ;
 struct moschip_port* usb_get_serial_port_data (struct usb_serial_port*) ;
 int write_mos_reg (struct usb_serial*,int ,int ,unsigned char) ;

__attribute__((used)) static void mos7720_break(struct tty_struct *tty, int break_state)
{
 struct usb_serial_port *port = tty->driver_data;
 unsigned char data;
 struct usb_serial *serial;
 struct moschip_port *mos7720_port;

 serial = port->serial;

 mos7720_port = usb_get_serial_port_data(port);
 if (mos7720_port == ((void*)0))
  return;

 if (break_state == -1)
  data = mos7720_port->shadowLCR | UART_LCR_SBC;
 else
  data = mos7720_port->shadowLCR & ~UART_LCR_SBC;

 mos7720_port->shadowLCR = data;
 write_mos_reg(serial, port->port_number, MOS7720_LCR,
        mos7720_port->shadowLCR);
}
