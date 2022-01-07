
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_pinctrl {int dummy; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 struct owl_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 int irq_set_type (struct owl_pinctrl*,int ,unsigned int) ;

__attribute__((used)) static int owl_gpio_irq_set_type(struct irq_data *data, unsigned int type)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(data);
 struct owl_pinctrl *pctrl = gpiochip_get_data(gc);

 if (type & (IRQ_TYPE_LEVEL_LOW | IRQ_TYPE_LEVEL_HIGH))
  irq_set_handler_locked(data, handle_level_irq);
 else
  irq_set_handler_locked(data, handle_edge_irq);

 irq_set_type(pctrl, data->hwirq, type);

 return 0;
}
