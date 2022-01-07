
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; } ;
struct uart_state {TYPE_1__ port; } ;
struct uart_port {TYPE_2__* ops; } ;
struct tty_struct {int termios; struct uart_state* driver_data; } ;
struct TYPE_4__ {int (* set_ldisc ) (struct uart_port*,int *) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct uart_port*,int *) ;
 struct uart_port* uart_port_check (struct uart_state*) ;

__attribute__((used)) static void uart_set_ldisc(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *uport;

 mutex_lock(&state->port.mutex);
 uport = uart_port_check(state);
 if (uport && uport->ops->set_ldisc)
  uport->ops->set_ldisc(uport, &tty->termios);
 mutex_unlock(&state->port.mutex);
}
