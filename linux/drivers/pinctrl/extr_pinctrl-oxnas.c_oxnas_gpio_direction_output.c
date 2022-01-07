
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct oxnas_gpio_bank {scalar_t__ reg_base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 scalar_t__ OUTPUT_EN_SET ;
 struct oxnas_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int oxnas_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int oxnas_gpio_direction_output(struct gpio_chip *chip,
           unsigned int offset, int value)
{
 struct oxnas_gpio_bank *bank = gpiochip_get_data(chip);
 u32 mask = BIT(offset);

 oxnas_gpio_set(chip, offset, value);
 writel_relaxed(mask, bank->reg_base + OUTPUT_EN_SET);

 return 0;
}
