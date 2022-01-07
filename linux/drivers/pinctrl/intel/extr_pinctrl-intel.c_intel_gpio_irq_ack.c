
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct intel_pinctrl {int lock; } ;
struct intel_padgroup {unsigned int reg_num; } ;
struct intel_community {unsigned int is_offset; scalar_t__ regs; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 struct intel_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int intel_gpio_to_pin (struct intel_pinctrl*,int ,struct intel_community const**,struct intel_padgroup const**) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 unsigned int padgroup_offset (struct intel_padgroup const*,int) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void intel_gpio_irq_ack(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct intel_pinctrl *pctrl = gpiochip_get_data(gc);
 const struct intel_community *community;
 const struct intel_padgroup *padgrp;
 int pin;

 pin = intel_gpio_to_pin(pctrl, irqd_to_hwirq(d), &community, &padgrp);
 if (pin >= 0) {
  unsigned int gpp, gpp_offset, is_offset;

  gpp = padgrp->reg_num;
  gpp_offset = padgroup_offset(padgrp, pin);
  is_offset = community->is_offset + gpp * 4;

  raw_spin_lock(&pctrl->lock);
  writel(BIT(gpp_offset), community->regs + is_offset);
  raw_spin_unlock(&pctrl->lock);
 }
}
