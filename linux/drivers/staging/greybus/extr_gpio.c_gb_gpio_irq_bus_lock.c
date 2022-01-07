
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct gb_gpio_controller {int irq_lock; } ;


 struct gb_gpio_controller* gpio_chip_to_gb_gpio_controller (struct gpio_chip*) ;
 struct gpio_chip* irq_data_to_gpio_chip (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void gb_gpio_irq_bus_lock(struct irq_data *d)
{
 struct gpio_chip *chip = irq_data_to_gpio_chip(d);
 struct gb_gpio_controller *ggc = gpio_chip_to_gb_gpio_controller(chip);

 mutex_lock(&ggc->irq_lock);
}
