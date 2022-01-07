
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct atmel_uart_port {int (* schedule_rx ) (struct uart_port*) ;} ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct uart_port*) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_tasklet_rx_func(unsigned long data)
{
 struct uart_port *port = (struct uart_port *)data;
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);


 spin_lock(&port->lock);
 atmel_port->schedule_rx(port);
 spin_unlock(&port->lock);
}
