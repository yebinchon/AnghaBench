
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;
struct uart_state {struct tty_port port; } ;
struct tty_struct {int flags; } ;


 int TTY_IO_ERROR ;
 int set_bit (int ,int *) ;
 scalar_t__ tty_port_initialized (struct tty_port*) ;
 int uart_port_startup (struct tty_struct*,struct uart_state*,int) ;

__attribute__((used)) static int uart_startup(struct tty_struct *tty, struct uart_state *state,
  int init_hw)
{
 struct tty_port *port = &state->port;
 int retval;

 if (tty_port_initialized(port))
  return 0;

 retval = uart_port_startup(tty, state, init_hw);
 if (retval)
  set_bit(TTY_IO_ERROR, &tty->flags);

 return retval;
}
