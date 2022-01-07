
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct ingenic_gpio_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;







 struct ingenic_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int handle_bad_irq ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int ingenic_gpio_get_value (struct ingenic_gpio_chip*,int ) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 int irq_set_type (struct ingenic_gpio_chip*,int ,unsigned int) ;

__attribute__((used)) static int ingenic_gpio_irq_set_type(struct irq_data *irqd, unsigned int type)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(irqd);
 struct ingenic_gpio_chip *jzgc = gpiochip_get_data(gc);

 switch (type) {
 case 132:
 case 130:
 case 131:
  irq_set_handler_locked(irqd, handle_edge_irq);
  break;
 case 129:
 case 128:
  irq_set_handler_locked(irqd, handle_level_irq);
  break;
 default:
  irq_set_handler_locked(irqd, handle_bad_irq);
 }

 if (type == 132) {





  bool high = ingenic_gpio_get_value(jzgc, irqd->hwirq);

  type = high ? 131 : 130;
 }

 irq_set_type(jzgc, irqd->hwirq, type);
 return 0;
}
