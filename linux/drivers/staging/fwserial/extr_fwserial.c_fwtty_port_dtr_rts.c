
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {int dummy; } ;
struct TYPE_2__ {int console; } ;
struct fwtty_port {int mctrl; int lock; TYPE_1__ port; } ;


 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int __fwtty_write_port_status (struct fwtty_port*) ;
 int fwtty_dbg (struct fwtty_port*,char*,int) ;
 struct fwtty_port* port ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct fwtty_port* to_port (struct tty_port*,int ) ;

__attribute__((used)) static void fwtty_port_dtr_rts(struct tty_port *tty_port, int on)
{
 struct fwtty_port *port = to_port(tty_port, port);

 fwtty_dbg(port, "on/off: %d\n", on);

 spin_lock_bh(&port->lock);

 if (!port->port.console) {
  if (on)
   port->mctrl |= TIOCM_DTR | TIOCM_RTS;
  else
   port->mctrl &= ~(TIOCM_DTR | TIOCM_RTS);
 }

 __fwtty_write_port_status(port);
 spin_unlock_bh(&port->lock);
}
