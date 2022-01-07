
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int UART_CTRL_TI ;
 unsigned int UART_GET_CTRL (struct uart_port*) ;
 int UART_GET_STATUS (struct uart_port*) ;
 int UART_PUT_CTRL (struct uart_port*,unsigned int) ;
 int UART_STATUS_THE ;
 int apbuart_tx_chars (struct uart_port*) ;

__attribute__((used)) static void apbuart_start_tx(struct uart_port *port)
{
 unsigned int cr;

 cr = UART_GET_CTRL(port);
 cr |= UART_CTRL_TI;
 UART_PUT_CTRL(port, cr);

 if (UART_GET_STATUS(port) & UART_STATUS_THE)
  apbuart_tx_chars(port);
}
