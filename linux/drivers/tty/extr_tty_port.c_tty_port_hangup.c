
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; } ;
struct tty_port {int delta_msr_wait; int open_wait; int lock; struct tty_struct* tty; scalar_t__ count; } ;


 int TTY_IO_ERROR ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_kref_put (struct tty_struct*) ;
 int tty_port_set_active (struct tty_port*,int ) ;
 int tty_port_shutdown (struct tty_port*,struct tty_struct*) ;
 int wake_up_interruptible (int *) ;

void tty_port_hangup(struct tty_port *port)
{
 struct tty_struct *tty;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 port->count = 0;
 tty = port->tty;
 if (tty)
  set_bit(TTY_IO_ERROR, &tty->flags);
 port->tty = ((void*)0);
 spin_unlock_irqrestore(&port->lock, flags);
 tty_port_set_active(port, 0);
 tty_port_shutdown(port, tty);
 tty_kref_put(tty);
 wake_up_interruptible(&port->open_wait);
 wake_up_interruptible(&port->delta_msr_wait);
}
