
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nmk_gpio_chip {int clk; scalar_t__ addr; } ;
struct irq_desc {int dummy; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ NMK_GPIO_IS ;
 int __nmk_gpio_irq_handler (struct irq_desc*,int ) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct nmk_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_desc_get_handler_data (struct irq_desc*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void nmk_gpio_irq_handler(struct irq_desc *desc)
{
 struct gpio_chip *chip = irq_desc_get_handler_data(desc);
 struct nmk_gpio_chip *nmk_chip = gpiochip_get_data(chip);
 u32 status;

 clk_enable(nmk_chip->clk);
 status = readl(nmk_chip->addr + NMK_GPIO_IS);
 clk_disable(nmk_chip->clk);

 __nmk_gpio_irq_handler(desc, status);
}
