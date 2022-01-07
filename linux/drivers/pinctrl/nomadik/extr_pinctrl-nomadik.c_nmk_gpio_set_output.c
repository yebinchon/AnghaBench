
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmk_gpio_chip {int clk; } ;
struct gpio_chip {int dummy; } ;


 int __nmk_gpio_set_output (struct nmk_gpio_chip*,unsigned int,int) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct nmk_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void nmk_gpio_set_output(struct gpio_chip *chip, unsigned offset,
    int val)
{
 struct nmk_gpio_chip *nmk_chip = gpiochip_get_data(chip);

 clk_enable(nmk_chip->clk);

 __nmk_gpio_set_output(nmk_chip, offset, val);

 clk_disable(nmk_chip->clk);
}
