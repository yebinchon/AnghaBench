
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct fwtty_port* driver_data; } ;
struct fwtty_port {unsigned int mctrl; int lock; } ;


 unsigned int MCTRL_MASK ;
 int __fwtty_write_port_status (struct fwtty_port*) ;
 int fwtty_dbg (struct fwtty_port*,char*,unsigned int,unsigned int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int fwtty_tiocmset(struct tty_struct *tty,
     unsigned int set, unsigned int clear)
{
 struct fwtty_port *port = tty->driver_data;

 fwtty_dbg(port, "set: %x clear: %x\n", set, clear);



 spin_lock_bh(&port->lock);
 port->mctrl &= ~(clear & MCTRL_MASK & 0xffff);
 port->mctrl |= set & MCTRL_MASK & 0xffff;
 __fwtty_write_port_status(port);
 spin_unlock_bh(&port->lock);
 return 0;
}
