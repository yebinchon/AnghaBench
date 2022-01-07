
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct iproc_gpio {int lock; } ;
struct gpio_chip {int dummy; } ;


 struct iproc_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int iproc_gpio_irq_set_mask (struct irq_data*,int) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iproc_gpio_irq_unmask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct iproc_gpio *chip = gpiochip_get_data(gc);
 unsigned long flags;

 raw_spin_lock_irqsave(&chip->lock, flags);
 iproc_gpio_irq_set_mask(d, 1);
 raw_spin_unlock_irqrestore(&chip->lock, flags);
}
