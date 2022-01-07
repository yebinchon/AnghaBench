
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_pinctrl {int pctrl; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int owner; int parent; } ;


 int EINVAL ;
 int ENODEV ;
 int dev_err (int ,char*,int ) ;
 struct msm_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ gpiochip_lock_as_irq (struct gpio_chip*,int ) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int module_put (int ) ;
 int msm_gpio_direction_input (struct gpio_chip*,int ) ;
 int msm_pinmux_request_gpio (int ,int *,int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int msm_gpio_irq_reqres(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct msm_pinctrl *pctrl = gpiochip_get_data(gc);
 int ret;

 if (!try_module_get(gc->owner))
  return -ENODEV;

 ret = msm_pinmux_request_gpio(pctrl->pctrl, ((void*)0), d->hwirq);
 if (ret)
  goto out;
 msm_gpio_direction_input(gc, d->hwirq);

 if (gpiochip_lock_as_irq(gc, d->hwirq)) {
  dev_err(gc->parent,
   "unable to lock HW IRQ %lu for IRQ\n",
   d->hwirq);
  ret = -EINVAL;
  goto out;
 }
 return 0;
out:
 module_put(gc->owner);
 return ret;
}
