
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {scalar_t__ irq; } ;
struct TYPE_2__ {int function; } ;
struct uart_8250_port {TYPE_1__ timer; struct uart_port port; } ;


 int del_timer_sync (TYPE_1__*) ;
 int serial8250_timeout ;
 int serial_unlink_irq_chain (struct uart_8250_port*) ;

__attribute__((used)) static void univ8250_release_irq(struct uart_8250_port *up)
{
 struct uart_port *port = &up->port;

 del_timer_sync(&up->timer);
 up->timer.function = serial8250_timeout;
 if (port->irq)
  serial_unlink_irq_chain(up);
}
