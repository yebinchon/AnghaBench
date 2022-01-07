
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct intel_pinctrl {int dev; int irq; } ;
struct gpio_chip {int dummy; } ;


 int dev_dbg (int ,char*,char*,unsigned int) ;
 int disable_irq_wake (int ) ;
 int enable_irq_wake (int ) ;
 struct intel_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 unsigned int intel_gpio_to_pin (struct intel_pinctrl*,int ,int *,int *) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static int intel_gpio_irq_wake(struct irq_data *d, unsigned int on)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct intel_pinctrl *pctrl = gpiochip_get_data(gc);
 unsigned int pin = intel_gpio_to_pin(pctrl, irqd_to_hwirq(d), ((void*)0), ((void*)0));

 if (on)
  enable_irq_wake(pctrl->irq);
 else
  disable_irq_wake(pctrl->irq);

 dev_dbg(pctrl->dev, "%sable wake for pin %u\n", on ? "en" : "dis", pin);
 return 0;
}
