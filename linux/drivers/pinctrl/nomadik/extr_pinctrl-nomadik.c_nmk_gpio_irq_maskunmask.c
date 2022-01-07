
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmk_gpio_chip {int real_wake; int clk; int lock; } ;
struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 int EINVAL ;
 int NORMAL ;
 int __nmk_gpio_irq_modify (struct nmk_gpio_chip*,int ,int ,int) ;
 int __nmk_gpio_set_wake (struct nmk_gpio_chip*,int ,int) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct nmk_gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int nmk_gpio_slpm_lock ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int nmk_gpio_irq_maskunmask(struct irq_data *d, bool enable)
{
 struct nmk_gpio_chip *nmk_chip;
 unsigned long flags;

 nmk_chip = irq_data_get_irq_chip_data(d);
 if (!nmk_chip)
  return -EINVAL;

 clk_enable(nmk_chip->clk);
 spin_lock_irqsave(&nmk_gpio_slpm_lock, flags);
 spin_lock(&nmk_chip->lock);

 __nmk_gpio_irq_modify(nmk_chip, d->hwirq, NORMAL, enable);

 if (!(nmk_chip->real_wake & BIT(d->hwirq)))
  __nmk_gpio_set_wake(nmk_chip, d->hwirq, enable);

 spin_unlock(&nmk_chip->lock);
 spin_unlock_irqrestore(&nmk_gpio_slpm_lock, flags);
 clk_disable(nmk_chip->clk);

 return 0;
}
