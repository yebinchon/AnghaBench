
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmk_gpio_chip {int clk; } ;
struct irq_data {int dummy; } ;


 int clk_disable (int ) ;
 struct nmk_gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int nmk_gpio_irq_mask (struct irq_data*) ;

__attribute__((used)) static void nmk_gpio_irq_shutdown(struct irq_data *d)
{
 struct nmk_gpio_chip *nmk_chip = irq_data_get_irq_chip_data(d);

 nmk_gpio_irq_mask(d);
 clk_disable(nmk_chip->clk);
}
