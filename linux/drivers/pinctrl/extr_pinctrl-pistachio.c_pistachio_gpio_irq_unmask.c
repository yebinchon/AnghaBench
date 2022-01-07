
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pistachio_gpio_bank {int dummy; } ;
struct irq_data {int hwirq; } ;


 int GPIO_INTERRUPT_EN ;
 int gpio_mask_writel (struct pistachio_gpio_bank*,int ,int ,int) ;
 struct pistachio_gpio_bank* irqd_to_bank (struct irq_data*) ;

__attribute__((used)) static void pistachio_gpio_irq_unmask(struct irq_data *data)
{
 struct pistachio_gpio_bank *bank = irqd_to_bank(data);

 gpio_mask_writel(bank, GPIO_INTERRUPT_EN, data->hwirq, 1);
}
