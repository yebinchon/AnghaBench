
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* state; } ;
struct uart_8250_port {TYPE_2__ port; } ;
struct timer_list {int dummy; } ;
struct aspeed_vuart {int unthrottle_timer; struct uart_8250_port* port; } ;
struct TYPE_3__ {int port; } ;


 int aspeed_vuart_unthrottle (TYPE_2__*) ;
 struct aspeed_vuart* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int tty_buffer_space_avail (int *) ;
 scalar_t__ unthrottle_timeout ;
 int unthrottle_timer ;
 struct aspeed_vuart* vuart ;

__attribute__((used)) static void aspeed_vuart_unthrottle_exp(struct timer_list *timer)
{
 struct aspeed_vuart *vuart = from_timer(vuart, timer, unthrottle_timer);
 struct uart_8250_port *up = vuart->port;

 if (!tty_buffer_space_avail(&up->port.state->port)) {
  mod_timer(&vuart->unthrottle_timer,
     jiffies + unthrottle_timeout);
  return;
 }

 aspeed_vuart_unthrottle(&up->port);
}
