
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; } ;
struct ktermios {int dummy; } ;


 int UART_DIV_MAX ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ;

__attribute__((used)) static unsigned int serial8250_get_baud_rate(struct uart_port *port,
          struct ktermios *termios,
          struct ktermios *old)
{






 return uart_get_baud_rate(port, termios, old,
      port->uartclk / 16 / UART_DIV_MAX,
      port->uartclk);
}
