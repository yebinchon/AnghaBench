
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int * ops; int lock; } ;
struct uart_8250_port {int cur_iotype; struct uart_port port; } ;


 int serial8250_pops ;
 int spin_lock_init (int *) ;

void serial8250_init_port(struct uart_8250_port *up)
{
 struct uart_port *port = &up->port;

 spin_lock_init(&port->lock);
 port->ops = &serial8250_pops;

 up->cur_iotype = 0xFF;
}
