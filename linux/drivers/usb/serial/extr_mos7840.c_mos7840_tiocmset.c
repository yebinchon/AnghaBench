
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct moschip_port {unsigned int shadowMCR; } ;


 int ENODEV ;
 unsigned int MCR_DTR ;
 unsigned int MCR_LOOPBACK ;
 unsigned int MCR_RTS ;
 int MODEM_CONTROL_REGISTER ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_RTS ;
 int dev_dbg (int *,char*) ;
 struct moschip_port* mos7840_get_port_private (struct usb_serial_port*) ;
 int mos7840_set_uart_reg (struct usb_serial_port*,int ,unsigned int) ;

__attribute__((used)) static int mos7840_tiocmset(struct tty_struct *tty,
       unsigned int set, unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;
 struct moschip_port *mos7840_port;
 unsigned int mcr;
 int status;

 mos7840_port = mos7840_get_port_private(port);

 if (mos7840_port == ((void*)0))
  return -ENODEV;


 mcr = mos7840_port->shadowMCR;
 if (clear & TIOCM_RTS)
  mcr &= ~MCR_RTS;
 if (clear & TIOCM_DTR)
  mcr &= ~MCR_DTR;
 if (clear & TIOCM_LOOP)
  mcr &= ~MCR_LOOPBACK;

 if (set & TIOCM_RTS)
  mcr |= MCR_RTS;
 if (set & TIOCM_DTR)
  mcr |= MCR_DTR;
 if (set & TIOCM_LOOP)
  mcr |= MCR_LOOPBACK;

 mos7840_port->shadowMCR = mcr;

 status = mos7840_set_uart_reg(port, MODEM_CONTROL_REGISTER, mcr);
 if (status < 0) {
  dev_dbg(&port->dev, "setting MODEM_CONTROL_REGISTER Failed\n");
  return status;
 }

 return 0;
}
