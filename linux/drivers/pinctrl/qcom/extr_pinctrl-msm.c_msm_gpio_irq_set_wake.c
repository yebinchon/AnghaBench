
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_pinctrl {int lock; int irq; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct msm_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_irq_wake (int ,unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int msm_gpio_irq_set_wake(struct irq_data *d, unsigned int on)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct msm_pinctrl *pctrl = gpiochip_get_data(gc);
 unsigned long flags;

 raw_spin_lock_irqsave(&pctrl->lock, flags);

 irq_set_irq_wake(pctrl->irq, on);

 raw_spin_unlock_irqrestore(&pctrl->lock, flags);

 return 0;
}
