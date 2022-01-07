
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct bcm2835_pinctrl {int dummy; } ;


 int GPEDS0 ;
 int bcm2835_gpio_set_bit (struct bcm2835_pinctrl*,int ,unsigned int) ;
 struct bcm2835_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static void bcm2835_gpio_irq_ack(struct irq_data *data)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
 struct bcm2835_pinctrl *pc = gpiochip_get_data(chip);
 unsigned gpio = irqd_to_hwirq(data);

 bcm2835_gpio_set_bit(pc, GPEDS0, gpio);
}
