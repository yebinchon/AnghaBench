
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_pinctrl {int irqmux_map; int irqmux_lock; scalar_t__ hwlock; int * irqmux; int dev; } ;
struct TYPE_2__ {int parent; } ;
struct stm32_gpio_bank {int bank_ioport_nr; TYPE_1__ gpio_chip; } ;
struct irq_domain {struct stm32_gpio_bank* host_data; } ;
struct irq_data {size_t hwirq; } ;


 int BIT (size_t) ;
 int EBUSY ;
 int HWSPINLOCK_TIMEOUT ;
 int dev_err (int ,char*,...) ;
 struct stm32_pinctrl* dev_get_drvdata (int ) ;
 int hwspin_lock_timeout (scalar_t__,int ) ;
 int hwspin_unlock (scalar_t__) ;
 int regmap_field_write (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int stm32_gpio_domain_activate(struct irq_domain *d,
          struct irq_data *irq_data, bool reserve)
{
 struct stm32_gpio_bank *bank = d->host_data;
 struct stm32_pinctrl *pctl = dev_get_drvdata(bank->gpio_chip.parent);
 unsigned long flags;
 int ret = 0;





 spin_lock_irqsave(&pctl->irqmux_lock, flags);
 if (pctl->hwlock)
  ret = hwspin_lock_timeout(pctl->hwlock, HWSPINLOCK_TIMEOUT);

 if (ret) {
  dev_err(pctl->dev, "Can't get hwspinlock\n");
  goto unlock;
 }

 if (pctl->irqmux_map & BIT(irq_data->hwirq)) {
  dev_err(pctl->dev, "irq line %ld already requested.\n",
   irq_data->hwirq);
  ret = -EBUSY;
  if (pctl->hwlock)
   hwspin_unlock(pctl->hwlock);
  goto unlock;
 } else {
  pctl->irqmux_map |= BIT(irq_data->hwirq);
 }

 regmap_field_write(pctl->irqmux[irq_data->hwirq], bank->bank_ioport_nr);

 if (pctl->hwlock)
  hwspin_unlock(pctl->hwlock);

unlock:
 spin_unlock_irqrestore(&pctl->irqmux_lock, flags);
 return ret;
}
