
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
struct gs_port {int port_lock; int openclose; TYPE_1__ port; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int gs_closed(struct gs_port *port)
{
 int cond;

 spin_lock_irq(&port->port_lock);
 cond = (port->port.count == 0) && !port->openclose;
 spin_unlock_irq(&port->port_lock);
 return cond;
}
