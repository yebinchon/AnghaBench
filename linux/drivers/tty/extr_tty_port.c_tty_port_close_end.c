
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ closing; } ;
struct tty_port {int lock; int open_wait; scalar_t__ close_delay; scalar_t__ blocked_open; } ;


 int jiffies_to_msecs (scalar_t__) ;
 int msleep_interruptible (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_ldisc_flush (struct tty_struct*) ;
 int tty_port_set_active (struct tty_port*,int ) ;
 int wake_up_interruptible (int *) ;

void tty_port_close_end(struct tty_port *port, struct tty_struct *tty)
{
 unsigned long flags;

 tty_ldisc_flush(tty);
 tty->closing = 0;

 spin_lock_irqsave(&port->lock, flags);

 if (port->blocked_open) {
  spin_unlock_irqrestore(&port->lock, flags);
  if (port->close_delay)
   msleep_interruptible(jiffies_to_msecs(port->close_delay));
  spin_lock_irqsave(&port->lock, flags);
  wake_up_interruptible(&port->open_wait);
 }
 spin_unlock_irqrestore(&port->lock, flags);
 tty_port_set_active(port, 0);
}
