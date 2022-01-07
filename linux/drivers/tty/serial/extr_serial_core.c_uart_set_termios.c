
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
struct uart_state {TYPE_2__ port; } ;
struct uart_port {int flags; } ;
struct TYPE_3__ {unsigned int c_cflag; scalar_t__* c_cc; scalar_t__ c_ospeed; scalar_t__ c_ispeed; unsigned int c_iflag; } ;
struct tty_struct {TYPE_1__ termios; struct uart_state* driver_data; } ;
struct ktermios {scalar_t__* c_cc; unsigned int c_cflag; scalar_t__ c_ospeed; scalar_t__ c_ispeed; unsigned int c_iflag; } ;


 unsigned int BRKINT ;
 unsigned int CBAUD ;
 unsigned int CRTSCTS ;
 unsigned int IGNBRK ;
 unsigned int IGNPAR ;
 unsigned int INPCK ;
 unsigned int IXANY ;
 unsigned int IXOFF ;
 unsigned int IXON ;
 unsigned int PARMRK ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int UPF_SOFT_FLOW ;
 size_t VSTART ;
 size_t VSTOP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_throttled (struct tty_struct*) ;
 int uart_change_speed (struct tty_struct*,struct uart_state*,struct ktermios*) ;
 int uart_clear_mctrl (struct uart_port*,unsigned int) ;
 struct uart_port* uart_port_check (struct uart_state*) ;
 int uart_set_mctrl (struct uart_port*,unsigned int) ;

__attribute__((used)) static void uart_set_termios(struct tty_struct *tty,
      struct ktermios *old_termios)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *uport;
 unsigned int cflag = tty->termios.c_cflag;
 unsigned int iflag_mask = IGNBRK|BRKINT|IGNPAR|PARMRK|INPCK;
 bool sw_changed = 0;

 mutex_lock(&state->port.mutex);
 uport = uart_port_check(state);
 if (!uport)
  goto out;





 if (uport->flags & UPF_SOFT_FLOW) {
  iflag_mask |= IXANY|IXON|IXOFF;
  sw_changed =
     tty->termios.c_cc[VSTART] != old_termios->c_cc[VSTART] ||
     tty->termios.c_cc[VSTOP] != old_termios->c_cc[VSTOP];
 }







 if ((cflag ^ old_termios->c_cflag) == 0 &&
     tty->termios.c_ospeed == old_termios->c_ospeed &&
     tty->termios.c_ispeed == old_termios->c_ispeed &&
     ((tty->termios.c_iflag ^ old_termios->c_iflag) & iflag_mask) == 0 &&
     !sw_changed) {
  goto out;
 }

 uart_change_speed(tty, state, old_termios);

 cflag = tty->termios.c_cflag;


 if ((old_termios->c_cflag & CBAUD) && !(cflag & CBAUD))
  uart_clear_mctrl(uport, TIOCM_RTS | TIOCM_DTR);

 else if (!(old_termios->c_cflag & CBAUD) && (cflag & CBAUD)) {
  unsigned int mask = TIOCM_DTR;
  if (!(cflag & CRTSCTS) || !tty_throttled(tty))
   mask |= TIOCM_RTS;
  uart_set_mctrl(uport, mask);
 }
out:
 mutex_unlock(&state->port.mutex);
}
