
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct atmel_uart_port {int fifo_size; } ;


 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static bool atmel_use_fifo(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);

 return atmel_port->fifo_size;
}
