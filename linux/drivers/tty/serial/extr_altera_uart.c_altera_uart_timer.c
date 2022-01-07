
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct timer_list {int dummy; } ;
struct altera_uart {int tmr; struct uart_port port; } ;


 int altera_uart_interrupt (int ,struct uart_port*) ;
 struct altera_uart* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct altera_uart* pp ;
 int tmr ;
 scalar_t__ uart_poll_timeout (struct uart_port*) ;

__attribute__((used)) static void altera_uart_timer(struct timer_list *t)
{
 struct altera_uart *pp = from_timer(pp, t, tmr);
 struct uart_port *port = &pp->port;

 altera_uart_interrupt(0, port);
 mod_timer(&pp->tmr, jiffies + uart_poll_timeout(port));
}
