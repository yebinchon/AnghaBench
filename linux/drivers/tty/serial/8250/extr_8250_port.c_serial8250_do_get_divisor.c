
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int flags; int uartclk; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct uart_8250_port {int bugs; TYPE_1__ port; } ;


 scalar_t__ PORT_NPCM ;
 int UART_BUG_QUOT ;
 int UPF_MAGIC_MULTIPLIER ;
 unsigned int npcm_get_divisor (struct uart_8250_port*,unsigned int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static unsigned int serial8250_do_get_divisor(struct uart_port *port,
           unsigned int baud,
           unsigned int *frac)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 unsigned int quot;






 if ((port->flags & UPF_MAGIC_MULTIPLIER) &&
     baud == (port->uartclk/4))
  quot = 0x8001;
 else if ((port->flags & UPF_MAGIC_MULTIPLIER) &&
   baud == (port->uartclk/8))
  quot = 0x8002;
 else if (up->port.type == PORT_NPCM)
  quot = npcm_get_divisor(up, baud);
 else
  quot = uart_get_divisor(port, baud);




 if (up->bugs & UART_BUG_QUOT && (quot & 0xff) == 0)
  quot++;

 return quot;
}
