
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct atmel_uart_port {int tasklet_rx; } ;


 int atmel_tasklet_schedule (struct atmel_uart_port*,int *) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_complete_rx_dma(void *arg)
{
 struct uart_port *port = arg;
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);

 atmel_tasklet_schedule(atmel_port, &atmel_port->tasklet_rx);
}
