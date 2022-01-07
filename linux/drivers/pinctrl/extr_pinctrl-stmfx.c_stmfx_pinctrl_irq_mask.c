
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct stmfx_pinctrl {size_t* irq_gpi_src; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 size_t get_mask (int ) ;
 size_t get_reg (int ) ;
 struct stmfx_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void stmfx_pinctrl_irq_mask(struct irq_data *data)
{
 struct gpio_chip *gpio_chip = irq_data_get_irq_chip_data(data);
 struct stmfx_pinctrl *pctl = gpiochip_get_data(gpio_chip);
 u32 reg = get_reg(data->hwirq);
 u32 mask = get_mask(data->hwirq);

 pctl->irq_gpi_src[reg] &= ~mask;
}
