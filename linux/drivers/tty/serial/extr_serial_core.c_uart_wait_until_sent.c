
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_state {int dummy; } ;
struct uart_port {scalar_t__ type; int fifosize; int timeout; TYPE_1__* ops; int line; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int (* tx_empty ) (struct uart_port*) ;} ;


 int HZ ;
 scalar_t__ PORT_UNKNOWN ;
 int current ;
 int jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int msleep_interruptible (int ) ;
 int pr_debug (char*,int ,int,unsigned long) ;
 scalar_t__ signal_pending (int ) ;
 int stub1 (struct uart_port*) ;
 scalar_t__ time_after (int,unsigned long) ;
 int uart_port_deref (struct uart_port*) ;
 struct uart_port* uart_port_ref (struct uart_state*) ;

__attribute__((used)) static void uart_wait_until_sent(struct tty_struct *tty, int timeout)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *port;
 unsigned long char_time, expire;

 port = uart_port_ref(state);
 if (!port)
  return;

 if (port->type == PORT_UNKNOWN || port->fifosize == 0) {
  uart_port_deref(port);
  return;
 }
 char_time = (port->timeout - HZ/50) / port->fifosize;
 char_time = char_time / 5;
 if (char_time == 0)
  char_time = 1;
 if (timeout && timeout < char_time)
  char_time = timeout;
 if (timeout == 0 || timeout > 2 * port->timeout)
  timeout = 2 * port->timeout;

 expire = jiffies + timeout;

 pr_debug("uart_wait_until_sent(%d), jiffies=%lu, expire=%lu...\n",
  port->line, jiffies, expire);






 while (!port->ops->tx_empty(port)) {
  msleep_interruptible(jiffies_to_msecs(char_time));
  if (signal_pending(current))
   break;
  if (time_after(jiffies, expire))
   break;
 }
 uart_port_deref(port);
}
