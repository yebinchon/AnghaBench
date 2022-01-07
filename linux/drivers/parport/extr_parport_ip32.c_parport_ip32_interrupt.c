
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport_ip32_private {int irq_mode; } ;
struct parport {TYPE_1__* physport; } ;
typedef int irqreturn_t ;
typedef enum parport_ip32_irq_mode { ____Placeholder_parport_ip32_irq_mode } parport_ip32_irq_mode ;
struct TYPE_2__ {struct parport_ip32_private* private_data; } ;


 int IRQ_HANDLED ;


 int parport_ip32_wakeup (struct parport* const) ;
 int parport_irq_handler (int,void*) ;

__attribute__((used)) static irqreturn_t parport_ip32_interrupt(int irq, void *dev_id)
{
 struct parport * const p = dev_id;
 struct parport_ip32_private * const priv = p->physport->private_data;
 enum parport_ip32_irq_mode irq_mode = priv->irq_mode;

 switch (irq_mode) {
 case 129:
  return parport_irq_handler(irq, dev_id);

 case 128:
  parport_ip32_wakeup(p);
  break;
 }

 return IRQ_HANDLED;
}
