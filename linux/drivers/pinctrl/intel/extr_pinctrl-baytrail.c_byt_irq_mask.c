
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct byt_gpio {int dummy; } ;


 int byt_gpio_clear_triggering (struct byt_gpio*,int ) ;
 struct byt_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static void byt_irq_mask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct byt_gpio *vg = gpiochip_get_data(gc);

 byt_gpio_clear_triggering(vg, irqd_to_hwirq(d));
}
