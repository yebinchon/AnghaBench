
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int hw_stopped; struct fwtty_port* driver_data; } ;
struct ktermios {int c_cflag; } ;
struct fwtty_port {int mctrl; int mstatus; int lock; } ;


 int CBAUD ;
 int CRTSCTS ;
 scalar_t__ C_CRTSCTS (struct tty_struct*) ;
 int TIOCM_CTS ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int __fwtty_write_port_status (struct fwtty_port*) ;
 int fwtty_restart_tx (struct fwtty_port*) ;
 unsigned int set_termios (struct fwtty_port*,struct tty_struct*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tty_throttled (struct tty_struct*) ;

__attribute__((used)) static void fwtty_set_termios(struct tty_struct *tty, struct ktermios *old)
{
 struct fwtty_port *port = tty->driver_data;
 unsigned int baud;

 spin_lock_bh(&port->lock);
 baud = set_termios(port, tty);

 if ((baud == 0) && (old->c_cflag & CBAUD)) {
  port->mctrl &= ~(TIOCM_DTR | TIOCM_RTS);
 } else if ((baud != 0) && !(old->c_cflag & CBAUD)) {
  if (C_CRTSCTS(tty) || !tty_throttled(tty))
   port->mctrl |= TIOCM_DTR | TIOCM_RTS;
  else
   port->mctrl |= TIOCM_DTR;
 }
 __fwtty_write_port_status(port);
 spin_unlock_bh(&port->lock);

 if (old->c_cflag & CRTSCTS) {
  if (!C_CRTSCTS(tty)) {
   tty->hw_stopped = 0;
   fwtty_restart_tx(port);
  }
 } else if (C_CRTSCTS(tty) && ~port->mstatus & TIOCM_CTS) {
  tty->hw_stopped = 1;
 }
}
