
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_state {int port; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct file {int dummy; } ;


 int tty_port_open (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static int uart_open(struct tty_struct *tty, struct file *filp)
{
 struct uart_state *state = tty->driver_data;
 int retval;

 retval = tty_port_open(&state->port, tty, filp);
 if (retval > 0)
  retval = 0;

 return retval;
}
