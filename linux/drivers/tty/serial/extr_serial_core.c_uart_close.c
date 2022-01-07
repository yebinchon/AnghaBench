
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {int lock; int count; } ;
struct uart_state {struct tty_port port; } ;
struct uart_driver {struct uart_state* state; } ;
struct tty_struct {int index; int port; TYPE_1__* driver; struct uart_state* driver_data; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct uart_driver* driver_state; } ;


 int pr_debug (char*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tty_port_close (int ,struct tty_struct*,struct file*) ;

__attribute__((used)) static void uart_close(struct tty_struct *tty, struct file *filp)
{
 struct uart_state *state = tty->driver_data;

 if (!state) {
  struct uart_driver *drv = tty->driver->driver_state;
  struct tty_port *port;

  state = drv->state + tty->index;
  port = &state->port;
  spin_lock_irq(&port->lock);
  --port->count;
  spin_unlock_irq(&port->lock);
  return;
 }

 pr_debug("uart_close(%d) called\n", tty->index);

 tty_port_close(tty->port, tty, filp);
}
