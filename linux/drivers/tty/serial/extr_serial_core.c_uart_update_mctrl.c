
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {unsigned int mctrl; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_mctrl ) (struct uart_port*,unsigned int) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct uart_port*,unsigned int) ;

__attribute__((used)) static void
uart_update_mctrl(struct uart_port *port, unsigned int set, unsigned int clear)
{
 unsigned long flags;
 unsigned int old;

 spin_lock_irqsave(&port->lock, flags);
 old = port->mctrl;
 port->mctrl = (old & ~clear) | set;
 if (old != port->mctrl)
  port->ops->set_mctrl(port, port->mctrl);
 spin_unlock_irqrestore(&port->lock, flags);
}
