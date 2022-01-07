
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;
struct atlas7_gpio_chip {int lock; } ;


 int __atlas7_gpio_irq_mask (struct atlas7_gpio_chip*,int ) ;
 struct atlas7_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void atlas7_gpio_irq_mask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct atlas7_gpio_chip *a7gc = gpiochip_get_data(gc);
 unsigned long flags;

 raw_spin_lock_irqsave(&a7gc->lock, flags);

 __atlas7_gpio_irq_mask(a7gc, d->hwirq);

 raw_spin_unlock_irqrestore(&a7gc->lock, flags);
}
