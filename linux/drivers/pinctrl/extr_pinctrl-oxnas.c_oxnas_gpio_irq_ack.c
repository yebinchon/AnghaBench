
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct oxnas_gpio_bank {scalar_t__ reg_base; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int ) ;
 scalar_t__ IRQ_PENDING ;
 struct oxnas_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void oxnas_gpio_irq_ack(struct irq_data *data)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
 struct oxnas_gpio_bank *bank = gpiochip_get_data(chip);
 u32 mask = BIT(data->hwirq);

 writel(mask, bank->reg_base + IRQ_PENDING);
}
