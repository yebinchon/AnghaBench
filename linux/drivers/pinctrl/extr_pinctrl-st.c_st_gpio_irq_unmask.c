
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_gpio_bank {scalar_t__ base; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int ) ;
 scalar_t__ REG_PIO_SET_PMASK ;
 struct st_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void st_gpio_irq_unmask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct st_gpio_bank *bank = gpiochip_get_data(gc);

 writel(BIT(d->hwirq), bank->base + REG_PIO_SET_PMASK);
}
