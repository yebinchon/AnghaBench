
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct fwtty_port* driver_data; } ;
struct TYPE_2__ {int unthrottle; } ;
struct fwtty_port {int lock; int mctrl; TYPE_1__ stats; } ;


 scalar_t__ C_CRTSCTS (struct tty_struct*) ;
 int OOB_RX_THROTTLE ;
 int TIOCM_RTS ;
 int __fwtty_write_port_status (struct fwtty_port*) ;
 int fwtty_dbg (struct fwtty_port*,char*,int) ;
 int fwtty_profile_fifo (struct fwtty_port*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void fwtty_unthrottle(struct tty_struct *tty)
{
 struct fwtty_port *port = tty->driver_data;

 fwtty_dbg(port, "CRTSCTS: %d\n", C_CRTSCTS(tty) != 0);

 fwtty_profile_fifo(port, port->stats.unthrottle);

 spin_lock_bh(&port->lock);
 port->mctrl &= ~OOB_RX_THROTTLE;
 if (C_CRTSCTS(tty))
  port->mctrl |= TIOCM_RTS;
 __fwtty_write_port_status(port);
 spin_unlock_bh(&port->lock);
}
