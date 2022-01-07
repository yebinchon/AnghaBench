
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct fwtty_port* driver_data; } ;
struct fwtty_port {unsigned int mctrl; unsigned int mstatus; int lock; } ;


 unsigned int MCTRL_MASK ;
 int fwtty_dbg (struct fwtty_port*,char*,unsigned int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int fwtty_tiocmget(struct tty_struct *tty)
{
 struct fwtty_port *port = tty->driver_data;
 unsigned int tiocm;

 spin_lock_bh(&port->lock);
 tiocm = (port->mctrl & MCTRL_MASK) | (port->mstatus & ~MCTRL_MASK);
 spin_unlock_bh(&port->lock);

 fwtty_dbg(port, "%x\n", tiocm);

 return tiocm;
}
