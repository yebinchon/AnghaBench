
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 int handle_edge_irq ;
 int irq_set_handler_locked (struct irq_data*,int ) ;

__attribute__((used)) static int oxnas_gpio_irq_set_type(struct irq_data *data, unsigned int type)
{
 if ((type & (IRQ_TYPE_EDGE_RISING|IRQ_TYPE_EDGE_FALLING)) == 0)
  return -EINVAL;

 irq_set_handler_locked(data, handle_edge_irq);

 return 0;
}
