
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int irq; int name; } ;
struct TYPE_2__ {int function; } ;
struct uart_8250_port {int bugs; TYPE_1__ timer; struct uart_port port; } ;


 int HZ ;
 int UART_BUG_THRE ;
 scalar_t__ jiffies ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 int pr_debug (char*,int ) ;
 int serial8250_backup_timeout ;
 int serial_link_irq_chain (struct uart_8250_port*) ;
 scalar_t__ uart_poll_timeout (struct uart_port*) ;

__attribute__((used)) static int univ8250_setup_irq(struct uart_8250_port *up)
{
 struct uart_port *port = &up->port;
 int retval = 0;





 if (up->bugs & UART_BUG_THRE) {
  pr_debug("%s - using backup timer\n", port->name);

  up->timer.function = serial8250_backup_timeout;
  mod_timer(&up->timer, jiffies +
     uart_poll_timeout(port) + HZ / 5);
 }






 if (!port->irq) {
  mod_timer(&up->timer, jiffies + uart_poll_timeout(port));
 } else
  retval = serial_link_irq_chain(up);

 return retval;
}
