
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int pistachio_gpio_direction_input (struct gpio_chip*,int ) ;
 int pistachio_gpio_irq_unmask (struct irq_data*) ;

__attribute__((used)) static unsigned int pistachio_gpio_irq_startup(struct irq_data *data)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(data);

 pistachio_gpio_direction_input(chip, data->hwirq);
 pistachio_gpio_irq_unmask(data);

 return 0;
}
