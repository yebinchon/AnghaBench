
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_port {int lock; int tty; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct tty_struct* tty_kref_get (int ) ;

struct tty_struct *tty_port_tty_get(struct tty_port *port)
{
 unsigned long flags;
 struct tty_struct *tty;

 spin_lock_irqsave(&port->lock, flags);
 tty = tty_kref_get(port->tty);
 spin_unlock_irqrestore(&port->lock, flags);
 return tty;
}
