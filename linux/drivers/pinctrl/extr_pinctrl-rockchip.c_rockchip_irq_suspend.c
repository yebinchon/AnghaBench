
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pin_bank {int clk; int saved_masks; } ;
struct irq_data {int dummy; } ;
struct irq_chip_generic {int wake_active; struct rockchip_pin_bank* private; } ;


 int GPIO_INTMASK ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_reg_readl (struct irq_chip_generic*,int ) ;
 int irq_reg_writel (struct irq_chip_generic*,int ,int ) ;

__attribute__((used)) static void rockchip_irq_suspend(struct irq_data *d)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct rockchip_pin_bank *bank = gc->private;

 clk_enable(bank->clk);
 bank->saved_masks = irq_reg_readl(gc, GPIO_INTMASK);
 irq_reg_writel(gc, ~gc->wake_active, GPIO_INTMASK);
 clk_disable(bank->clk);
}
