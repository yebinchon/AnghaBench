
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int ALTERA_UART_STATUS_REG ;
 int ALTERA_UART_STATUS_TMT_MSK ;
 unsigned int TIOCSER_TEMT ;
 int altera_uart_readl (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int altera_uart_tx_empty(struct uart_port *port)
{
 return (altera_uart_readl(port, ALTERA_UART_STATUS_REG) &
  ALTERA_UART_STATUS_TMT_MSK) ? TIOCSER_TEMT : 0;
}
