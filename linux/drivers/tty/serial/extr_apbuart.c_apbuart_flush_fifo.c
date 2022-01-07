
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int fifosize; } ;


 int UART_GET_CHAR (struct uart_port*) ;

__attribute__((used)) static void apbuart_flush_fifo(struct uart_port *port)
{
 int i;

 for (i = 0; i < port->fifosize; i++)
  UART_GET_CHAR(port);
}
