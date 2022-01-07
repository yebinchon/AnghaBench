
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uart_port {int dummy; } ;
struct atmel_uart_port {scalar_t__ tx_stopped; } ;


 int ATMEL_US_CSR ;
 int ATMEL_US_TXEMPTY ;
 int TIOCSER_TEMT ;
 int atmel_uart_readl (struct uart_port*,int ) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static u_int atmel_tx_empty(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);

 if (atmel_port->tx_stopped)
  return TIOCSER_TEMT;
 return (atmel_uart_readl(port, ATMEL_US_CSR) & ATMEL_US_TXEMPTY) ?
  TIOCSER_TEMT :
  0;
}
