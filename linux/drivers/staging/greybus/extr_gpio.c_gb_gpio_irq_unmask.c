
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {size_t hwirq; } ;
struct gpio_chip {int dummy; } ;
struct gb_gpio_line {int masked; int masked_pending; } ;
struct gb_gpio_controller {struct gb_gpio_line* lines; } ;


 struct gb_gpio_controller* gpio_chip_to_gb_gpio_controller (struct gpio_chip*) ;
 struct gpio_chip* irq_data_to_gpio_chip (struct irq_data*) ;

__attribute__((used)) static void gb_gpio_irq_unmask(struct irq_data *d)
{
 struct gpio_chip *chip = irq_data_to_gpio_chip(d);
 struct gb_gpio_controller *ggc = gpio_chip_to_gb_gpio_controller(chip);
 struct gb_gpio_line *line = &ggc->lines[d->hwirq];

 line->masked = 0;
 line->masked_pending = 1;
}
