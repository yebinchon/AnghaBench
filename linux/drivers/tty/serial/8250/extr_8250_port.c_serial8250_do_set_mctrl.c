
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_8250_port {unsigned char mcr_mask; unsigned char mcr_force; unsigned char mcr; } ;


 unsigned char serial8250_TIOCM_to_MCR (unsigned int) ;
 int serial8250_out_MCR (struct uart_8250_port*,unsigned char) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

void serial8250_do_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 unsigned char mcr;

 mcr = serial8250_TIOCM_to_MCR(mctrl);

 mcr = (mcr & up->mcr_mask) | up->mcr_force | up->mcr;

 serial8250_out_MCR(up, mcr);
}
