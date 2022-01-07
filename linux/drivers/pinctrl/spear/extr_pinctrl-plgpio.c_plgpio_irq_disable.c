
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ie; } ;
struct plgpio {int (* p2o ) (int) ;int p2o_regs; int lock; TYPE_1__ regs; int base; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int PTO_IE_REG ;
 struct plgpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int plgpio_reg_set (int ,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int) ;

__attribute__((used)) static void plgpio_irq_disable(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct plgpio *plgpio = gpiochip_get_data(gc);
 int offset = d->hwirq;
 unsigned long flags;


 if (plgpio->p2o && (plgpio->p2o_regs & PTO_IE_REG)) {
  offset = plgpio->p2o(offset);
  if (offset == -1)
   return;
 }

 spin_lock_irqsave(&plgpio->lock, flags);
 plgpio_reg_set(plgpio->base, offset, plgpio->regs.ie);
 spin_unlock_irqrestore(&plgpio->lock, flags);
}
