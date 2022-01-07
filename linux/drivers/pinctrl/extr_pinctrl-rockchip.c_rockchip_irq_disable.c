
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pin_bank {int clk; } ;
struct irq_data {int dummy; } ;
struct irq_chip_generic {struct rockchip_pin_bank* private; } ;


 int clk_disable (int ) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_gc_mask_set_bit (struct irq_data*) ;

__attribute__((used)) static void rockchip_irq_disable(struct irq_data *d)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct rockchip_pin_bank *bank = gc->private;

 irq_gc_mask_set_bit(d);
 clk_disable(bank->clk);
}
