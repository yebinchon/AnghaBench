
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct timer_list {int dummy; } ;
struct atmel_uart_port {int uart_timer; int tasklet_rx; int tasklet_shutdown; struct uart_port uart; } ;


 struct atmel_uart_port* atmel_port ;
 int atomic_read (int *) ;
 struct atmel_uart_port* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int tasklet_schedule (int *) ;
 scalar_t__ uart_poll_timeout (struct uart_port*) ;
 int uart_timer ;

__attribute__((used)) static void atmel_uart_timer_callback(struct timer_list *t)
{
 struct atmel_uart_port *atmel_port = from_timer(atmel_port, t,
       uart_timer);
 struct uart_port *port = &atmel_port->uart;

 if (!atomic_read(&atmel_port->tasklet_shutdown)) {
  tasklet_schedule(&atmel_port->tasklet_rx);
  mod_timer(&atmel_port->uart_timer,
     jiffies + uart_poll_timeout(port));
 }
}
