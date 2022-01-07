
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pin_bank {int clk; } ;
struct irq_data {int dummy; } ;
struct irq_chip_generic {struct rockchip_pin_bank* private; } ;


 int clk_enable (int ) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_gc_mask_clr_bit (struct irq_data*) ;

__attribute__((used)) static void rockchip_irq_enable(struct irq_data *d)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct rockchip_pin_bank *bank = gc->private;

 clk_enable(bank->clk);
 irq_gc_mask_clr_bit(d);
}
