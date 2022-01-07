
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct irq_data {int mask; } ;
struct gpio_chip {int dummy; } ;
struct armada_37xx_pinctrl {int irq_lock; scalar_t__ base; } ;


 scalar_t__ IRQ_STATUS ;
 int armada_37xx_irq_update_reg (scalar_t__*,struct irq_data*) ;
 struct armada_37xx_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void armada_37xx_irq_ack(struct irq_data *d)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(d);
 struct armada_37xx_pinctrl *info = gpiochip_get_data(chip);
 u32 reg = IRQ_STATUS;
 unsigned long flags;

 armada_37xx_irq_update_reg(&reg, d);
 spin_lock_irqsave(&info->irq_lock, flags);
 writel(d->mask, info->base + reg);
 spin_unlock_irqrestore(&info->irq_lock, flags);
}
