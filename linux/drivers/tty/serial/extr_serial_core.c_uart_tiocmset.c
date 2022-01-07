
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int mutex; } ;
struct uart_state {struct tty_port port; } ;
struct uart_port {int dummy; } ;
struct tty_struct {struct uart_state* driver_data; } ;


 int EIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_io_error (struct tty_struct*) ;
 struct uart_port* uart_port_check (struct uart_state*) ;
 int uart_update_mctrl (struct uart_port*,unsigned int,unsigned int) ;

__attribute__((used)) static int
uart_tiocmset(struct tty_struct *tty, unsigned int set, unsigned int clear)
{
 struct uart_state *state = tty->driver_data;
 struct tty_port *port = &state->port;
 struct uart_port *uport;
 int ret = -EIO;

 mutex_lock(&port->mutex);
 uport = uart_port_check(state);
 if (!uport)
  goto out;

 if (!tty_io_error(tty)) {
  uart_update_mctrl(uport, set, clear);
  ret = 0;
 }
out:
 mutex_unlock(&port->mutex);
 return ret;
}
