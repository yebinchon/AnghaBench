
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_state {int dummy; } ;
struct uart_port {scalar_t__ type; int hw_stopped; int lock; TYPE_1__* ops; int status; } ;
struct ktermios {int c_cflag; } ;
struct tty_struct {struct ktermios termios; } ;
struct TYPE_2__ {int (* get_mctrl ) (struct uart_port*) ;int (* stop_tx ) (struct uart_port*) ;int (* set_termios ) (struct uart_port*,struct ktermios*,struct ktermios*) ;} ;


 int CLOCAL ;
 int CRTSCTS ;
 scalar_t__ PORT_UNKNOWN ;
 int TIOCM_CTS ;
 int UPSTAT_CTS_ENABLE ;
 int UPSTAT_DCD_ENABLE ;
 int __uart_start (struct tty_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct uart_port*,struct ktermios*,struct ktermios*) ;
 int stub2 (struct uart_port*) ;
 int stub3 (struct uart_port*) ;
 struct uart_port* uart_port_check (struct uart_state*) ;
 scalar_t__ uart_softcts_mode (struct uart_port*) ;

__attribute__((used)) static void uart_change_speed(struct tty_struct *tty, struct uart_state *state,
     struct ktermios *old_termios)
{
 struct uart_port *uport = uart_port_check(state);
 struct ktermios *termios;
 int hw_stopped;





 if (!tty || uport->type == PORT_UNKNOWN)
  return;

 termios = &tty->termios;
 uport->ops->set_termios(uport, termios, old_termios);




 spin_lock_irq(&uport->lock);
 if (termios->c_cflag & CRTSCTS)
  uport->status |= UPSTAT_CTS_ENABLE;
 else
  uport->status &= ~UPSTAT_CTS_ENABLE;

 if (termios->c_cflag & CLOCAL)
  uport->status &= ~UPSTAT_DCD_ENABLE;
 else
  uport->status |= UPSTAT_DCD_ENABLE;


 hw_stopped = uport->hw_stopped;
 uport->hw_stopped = uart_softcts_mode(uport) &&
    !(uport->ops->get_mctrl(uport) & TIOCM_CTS);
 if (uport->hw_stopped) {
  if (!hw_stopped)
   uport->ops->stop_tx(uport);
 } else {
  if (hw_stopped)
   __uart_start(tty);
 }
 spin_unlock_irq(&uport->lock);
}
