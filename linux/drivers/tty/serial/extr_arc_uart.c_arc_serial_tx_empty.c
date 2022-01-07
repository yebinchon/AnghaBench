
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;
 unsigned int TXEMPTY ;
 unsigned int UART_GET_STATUS (struct uart_port*) ;

__attribute__((used)) static unsigned int arc_serial_tx_empty(struct uart_port *port)
{
 unsigned int stat;

 stat = UART_GET_STATUS(port);
 if (stat & TXEMPTY)
  return TIOCSER_TEMT;

 return 0;
}
