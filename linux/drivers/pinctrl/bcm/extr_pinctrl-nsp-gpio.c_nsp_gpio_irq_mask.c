
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsp_gpio {int lock; } ;
struct irq_data {int dummy; } ;


 struct nsp_gpio* irq_data_get_irq_chip_data (struct irq_data*) ;
 int nsp_gpio_irq_set_mask (struct irq_data*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nsp_gpio_irq_mask(struct irq_data *d)
{
 struct nsp_gpio *chip = irq_data_get_irq_chip_data(d);
 unsigned long flags;

 raw_spin_lock_irqsave(&chip->lock, flags);
 nsp_gpio_irq_set_mask(d, 0);
 raw_spin_unlock_irqrestore(&chip->lock, flags);
}
