
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx150x_pinctrl {int dummy; } ;
struct irq_data {unsigned int hwirq; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 unsigned int SX150X_IRQ_TYPE_EDGE_FALLING ;
 unsigned int SX150X_IRQ_TYPE_EDGE_RISING ;
 struct sx150x_pinctrl* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;
 int sx150x_irq_set_sense (struct sx150x_pinctrl*,unsigned int,unsigned int) ;

__attribute__((used)) static int sx150x_irq_set_type(struct irq_data *d, unsigned int flow_type)
{
 struct sx150x_pinctrl *pctl =
   gpiochip_get_data(irq_data_get_irq_chip_data(d));
 unsigned int n, val = 0;

 if (flow_type & (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW))
  return -EINVAL;

 n = d->hwirq;

 if (flow_type & IRQ_TYPE_EDGE_RISING)
  val |= SX150X_IRQ_TYPE_EDGE_RISING;
 if (flow_type & IRQ_TYPE_EDGE_FALLING)
  val |= SX150X_IRQ_TYPE_EDGE_FALLING;

 sx150x_irq_set_sense(pctl, n, val);
 return 0;
}
