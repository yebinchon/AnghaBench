
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct chv_pinctrl {scalar_t__ regs; } ;


 int BIT (int) ;
 scalar_t__ CHV_INTSTAT ;
 int CHV_PADCTRL0 ;
 int CHV_PADCTRL0_INTSEL_MASK ;
 int CHV_PADCTRL0_INTSEL_SHIFT ;
 int chv_lock ;
 int chv_padreg (struct chv_pinctrl*,int,int ) ;
 int chv_writel (int ,scalar_t__) ;
 struct chv_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int readl (int ) ;

__attribute__((used)) static void chv_gpio_irq_ack(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct chv_pinctrl *pctrl = gpiochip_get_data(gc);
 int pin = irqd_to_hwirq(d);
 u32 intr_line;

 raw_spin_lock(&chv_lock);

 intr_line = readl(chv_padreg(pctrl, pin, CHV_PADCTRL0));
 intr_line &= CHV_PADCTRL0_INTSEL_MASK;
 intr_line >>= CHV_PADCTRL0_INTSEL_SHIFT;
 chv_writel(BIT(intr_line), pctrl->regs + CHV_INTSTAT);

 raw_spin_unlock(&chv_lock);
}
