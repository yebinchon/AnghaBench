
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; } ;
struct uart_8250_port {struct uart_port port; } ;


 unsigned int DIV_ROUND_CLOSEST (int ,int) ;

__attribute__((used)) static unsigned int npcm_get_divisor(struct uart_8250_port *up,
  unsigned int baud)
{
 struct uart_port *port = &up->port;

 return DIV_ROUND_CLOSEST(port->uartclk, 16 * baud + 2) - 2;
}
