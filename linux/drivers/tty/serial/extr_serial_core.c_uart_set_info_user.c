
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int mutex; } ;
struct uart_state {struct tty_port port; } ;
struct tty_struct {int termios_rwsem; struct uart_state* driver_data; } ;
struct serial_struct {int dummy; } ;


 int down_write (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uart_set_info (struct tty_struct*,struct tty_port*,struct uart_state*,struct serial_struct*) ;
 int up_write (int *) ;

__attribute__((used)) static int uart_set_info_user(struct tty_struct *tty, struct serial_struct *ss)
{
 struct uart_state *state = tty->driver_data;
 struct tty_port *port = &state->port;
 int retval;

 down_write(&tty->termios_rwsem);







 mutex_lock(&port->mutex);
 retval = uart_set_info(tty, port, state, ss);
 mutex_unlock(&port->mutex);
 up_write(&tty->termios_rwsem);
 return retval;
}
