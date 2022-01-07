
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int upstat_t ;
struct uart_state {int dummy; } ;
struct uart_port {int status; TYPE_1__* ops; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int (* throttle ) (struct uart_port*) ;} ;


 scalar_t__ C_CRTSCTS (struct tty_struct*) ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int STOP_CHAR (struct tty_struct*) ;
 int TIOCM_RTS ;
 int UPSTAT_AUTORTS ;
 int UPSTAT_AUTOXOFF ;
 int UPSTAT_SYNC_FIFO ;
 int stub1 (struct uart_port*) ;
 int uart_clear_mctrl (struct uart_port*,int ) ;
 int uart_port_deref (struct uart_port*) ;
 struct uart_port* uart_port_ref (struct uart_state*) ;
 int uart_send_xchar (struct tty_struct*,int ) ;

__attribute__((used)) static void uart_throttle(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 upstat_t mask = UPSTAT_SYNC_FIFO;
 struct uart_port *port;

 port = uart_port_ref(state);
 if (!port)
  return;

 if (I_IXOFF(tty))
  mask |= UPSTAT_AUTOXOFF;
 if (C_CRTSCTS(tty))
  mask |= UPSTAT_AUTORTS;

 if (port->status & mask) {
  port->ops->throttle(port);
  mask &= ~port->status;
 }

 if (mask & UPSTAT_AUTORTS)
  uart_clear_mctrl(port, TIOCM_RTS);

 if (mask & UPSTAT_AUTOXOFF)
  uart_send_xchar(tty, STOP_CHAR(tty));

 uart_port_deref(port);
}
