
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;
 unsigned int UART_GET_STATUS (struct uart_port*) ;
 unsigned int UART_STATUS_THE ;

__attribute__((used)) static unsigned int apbuart_tx_empty(struct uart_port *port)
{
 unsigned int status = UART_GET_STATUS(port);
 return status & UART_STATUS_THE ? TIOCSER_TEMT : 0;
}
