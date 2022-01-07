
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* handle_irq ) (TYPE_1__*) ;} ;
struct uart_8250_port {TYPE_1__ port; int timer; } ;
struct timer_list {int dummy; } ;


 struct uart_8250_port* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int stub1 (TYPE_1__*) ;
 int timer ;
 scalar_t__ uart_poll_timeout (TYPE_1__*) ;
 struct uart_8250_port* up ;

__attribute__((used)) static void serial8250_timeout(struct timer_list *t)
{
 struct uart_8250_port *up = from_timer(up, t, timer);

 up->port.handle_irq(&up->port);
 mod_timer(&up->timer, jiffies + uart_poll_timeout(&up->port));
}
