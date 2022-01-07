
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_pinctrl {scalar_t__* irq_array; int pctl_dev; int dev; TYPE_1__* desc; int chip; } ;
struct sunxi_desc_function {int muxval; } ;
struct irq_data {size_t hwirq; } ;
struct TYPE_2__ {scalar_t__ pin_base; } ;


 int EINVAL ;
 int dev_err (int ,char*,int ) ;
 int gpiochip_lock_as_irq (int ,scalar_t__) ;
 struct sunxi_pinctrl* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 struct sunxi_desc_function* sunxi_pinctrl_desc_find_function_by_pin (struct sunxi_pinctrl*,scalar_t__,char*) ;
 int sunxi_pmx_set (int ,scalar_t__,int ) ;

__attribute__((used)) static int sunxi_pinctrl_irq_request_resources(struct irq_data *d)
{
 struct sunxi_pinctrl *pctl = irq_data_get_irq_chip_data(d);
 struct sunxi_desc_function *func;
 int ret;

 func = sunxi_pinctrl_desc_find_function_by_pin(pctl,
     pctl->irq_array[d->hwirq], "irq");
 if (!func)
  return -EINVAL;

 ret = gpiochip_lock_as_irq(pctl->chip,
   pctl->irq_array[d->hwirq] - pctl->desc->pin_base);
 if (ret) {
  dev_err(pctl->dev, "unable to lock HW IRQ %lu for IRQ\n",
   irqd_to_hwirq(d));
  return ret;
 }


 sunxi_pmx_set(pctl->pctl_dev, pctl->irq_array[d->hwirq], func->muxval);

 return 0;
}
