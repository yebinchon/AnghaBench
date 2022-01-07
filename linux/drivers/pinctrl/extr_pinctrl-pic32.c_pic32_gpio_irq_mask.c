
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_gpio_bank {scalar_t__ reg_base; } ;
struct irq_data {int dummy; } ;


 int BIT (int ) ;
 int CNCON_REG ;
 scalar_t__ PIC32_CLR (int ) ;
 int PIC32_CNCON_ON ;
 struct pic32_gpio_bank* irqd_to_bank (struct irq_data*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void pic32_gpio_irq_mask(struct irq_data *data)
{
 struct pic32_gpio_bank *bank = irqd_to_bank(data);

 writel(BIT(PIC32_CNCON_ON), bank->reg_base + PIC32_CLR(CNCON_REG));
}
