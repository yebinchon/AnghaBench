
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int hwirq; } ;
struct iproc_gpio {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int IPROC_GPIO_INT_MSK_OFFSET ;
 struct iproc_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int iproc_set_bit (struct iproc_gpio*,int ,unsigned int,int) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void iproc_gpio_irq_set_mask(struct irq_data *d, bool unmask)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct iproc_gpio *chip = gpiochip_get_data(gc);
 unsigned gpio = d->hwirq;

 iproc_set_bit(chip, IPROC_GPIO_INT_MSK_OFFSET, gpio, unmask);
}
