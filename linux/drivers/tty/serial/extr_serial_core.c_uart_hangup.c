
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int mutex; int delta_msr_wait; int open_wait; int lock; scalar_t__ count; } ;
struct uart_state {struct tty_port port; } ;
struct uart_port {int dummy; } ;
struct tty_struct {int index; struct uart_state* driver_data; } ;


 int UART_PM_STATE_OFF ;
 int WARN (int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tty_port_active (struct tty_port*) ;
 int tty_port_set_active (struct tty_port*,int ) ;
 int tty_port_tty_set (struct tty_port*,int *) ;
 int uart_change_pm (struct uart_state*,int ) ;
 int uart_console (struct uart_port*) ;
 int uart_flush_buffer (struct tty_struct*) ;
 struct uart_port* uart_port_check (struct uart_state*) ;
 int uart_shutdown (struct tty_struct*,struct uart_state*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void uart_hangup(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 struct tty_port *port = &state->port;
 struct uart_port *uport;
 unsigned long flags;

 pr_debug("uart_hangup(%d)\n", tty->index);

 mutex_lock(&port->mutex);
 uport = uart_port_check(state);
 WARN(!uport, "hangup of detached port!\n");

 if (tty_port_active(port)) {
  uart_flush_buffer(tty);
  uart_shutdown(tty, state);
  spin_lock_irqsave(&port->lock, flags);
  port->count = 0;
  spin_unlock_irqrestore(&port->lock, flags);
  tty_port_set_active(port, 0);
  tty_port_tty_set(port, ((void*)0));
  if (uport && !uart_console(uport))
   uart_change_pm(state, UART_PM_STATE_OFF);
  wake_up_interruptible(&port->open_wait);
  wake_up_interruptible(&port->delta_msr_wait);
 }
 mutex_unlock(&port->mutex);
}
