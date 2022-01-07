
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct amd_gpio {int lock; scalar_t__ base; } ;


 int EOI_MASK ;
 scalar_t__ WAKE_INT_MASTER_REG ;
 struct amd_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void amd_gpio_irq_eoi(struct irq_data *d)
{
 u32 reg;
 unsigned long flags;
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct amd_gpio *gpio_dev = gpiochip_get_data(gc);

 raw_spin_lock_irqsave(&gpio_dev->lock, flags);
 reg = readl(gpio_dev->base + WAKE_INT_MASTER_REG);
 reg |= EOI_MASK;
 writel(reg, gpio_dev->base + WAKE_INT_MASTER_REG);
 raw_spin_unlock_irqrestore(&gpio_dev->lock, flags);
}
