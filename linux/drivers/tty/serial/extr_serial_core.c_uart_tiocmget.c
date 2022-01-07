
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {int mutex; } ;
struct uart_state {struct tty_port port; } ;
struct uart_port {int mctrl; int lock; TYPE_1__* ops; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int (* get_mctrl ) (struct uart_port*) ;} ;


 int EIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct uart_port*) ;
 int tty_io_error (struct tty_struct*) ;
 struct uart_port* uart_port_check (struct uart_state*) ;

__attribute__((used)) static int uart_tiocmget(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 struct tty_port *port = &state->port;
 struct uart_port *uport;
 int result = -EIO;

 mutex_lock(&port->mutex);
 uport = uart_port_check(state);
 if (!uport)
  goto out;

 if (!tty_io_error(tty)) {
  result = uport->mctrl;
  spin_lock_irq(&uport->lock);
  result |= uport->ops->get_mctrl(uport);
  spin_unlock_irq(&uport->lock);
 }
out:
 mutex_unlock(&port->mutex);
 return result;
}
