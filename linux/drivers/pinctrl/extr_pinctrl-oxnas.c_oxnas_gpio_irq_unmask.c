
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct oxnas_gpio_bank {scalar_t__ reg_base; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int ) ;
 scalar_t__ FE_IRQ_ENABLE ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 scalar_t__ RE_IRQ_ENABLE ;
 struct oxnas_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned int irqd_get_trigger_type (struct irq_data*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void oxnas_gpio_irq_unmask(struct irq_data *data)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
 struct oxnas_gpio_bank *bank = gpiochip_get_data(chip);
 unsigned int type = irqd_get_trigger_type(data);
 u32 mask = BIT(data->hwirq);

 if (type & IRQ_TYPE_EDGE_RISING)
  writel(readl(bank->reg_base + RE_IRQ_ENABLE) | mask,
         bank->reg_base + RE_IRQ_ENABLE);

 if (type & IRQ_TYPE_EDGE_FALLING)
  writel(readl(bank->reg_base + FE_IRQ_ENABLE) | mask,
         bank->reg_base + FE_IRQ_ENABLE);
}
