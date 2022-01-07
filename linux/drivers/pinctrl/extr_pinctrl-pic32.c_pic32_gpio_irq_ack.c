
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_gpio_bank {scalar_t__ reg_base; } ;
struct irq_data {int dummy; } ;


 scalar_t__ CNF_REG ;
 struct pic32_gpio_bank* irqd_to_bank (struct irq_data*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void pic32_gpio_irq_ack(struct irq_data *data)
{
 struct pic32_gpio_bank *bank = irqd_to_bank(data);

 writel(0, bank->reg_base + CNF_REG);
}
