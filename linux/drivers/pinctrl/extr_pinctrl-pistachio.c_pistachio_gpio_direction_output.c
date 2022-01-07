
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pistachio_gpio_bank {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int GPIO_OUTPUT_EN ;
 int gpio_enable (struct pistachio_gpio_bank*,unsigned int) ;
 int gpio_mask_writel (struct pistachio_gpio_bank*,int ,unsigned int,int) ;
 struct pistachio_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int pistachio_gpio_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int pistachio_gpio_direction_output(struct gpio_chip *chip,
        unsigned offset, int value)
{
 struct pistachio_gpio_bank *bank = gpiochip_get_data(chip);

 pistachio_gpio_set(chip, offset, value);
 gpio_mask_writel(bank, GPIO_OUTPUT_EN, offset, 1);
 gpio_enable(bank, offset);

 return 0;
}
