
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int port_number; int serial; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct moschip_port {unsigned int shadowMCR; } ;


 int MOS7720_MCR ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_RTS ;
 unsigned int UART_MCR_DTR ;
 unsigned int UART_MCR_LOOP ;
 unsigned int UART_MCR_RTS ;
 struct moschip_port* usb_get_serial_port_data (struct usb_serial_port*) ;
 int write_mos_reg (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int mos7720_tiocmset(struct tty_struct *tty,
       unsigned int set, unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;
 struct moschip_port *mos7720_port = usb_get_serial_port_data(port);
 unsigned int mcr ;

 mcr = mos7720_port->shadowMCR;

 if (set & TIOCM_RTS)
  mcr |= UART_MCR_RTS;
 if (set & TIOCM_DTR)
  mcr |= UART_MCR_DTR;
 if (set & TIOCM_LOOP)
  mcr |= UART_MCR_LOOP;

 if (clear & TIOCM_RTS)
  mcr &= ~UART_MCR_RTS;
 if (clear & TIOCM_DTR)
  mcr &= ~UART_MCR_DTR;
 if (clear & TIOCM_LOOP)
  mcr &= ~UART_MCR_LOOP;

 mos7720_port->shadowMCR = mcr;
 write_mos_reg(port->serial, port->port_number, MOS7720_MCR,
        mos7720_port->shadowMCR);

 return 0;
}
