
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int lock; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* handle_irq ) (struct uart_port*) ;} ;


 TYPE_1__* psc_ops ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct uart_port*) ;

__attribute__((used)) static irqreturn_t
mpc52xx_uart_int(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 irqreturn_t ret;

 spin_lock(&port->lock);

 ret = psc_ops->handle_irq(port);

 spin_unlock(&port->lock);

 return ret;
}
