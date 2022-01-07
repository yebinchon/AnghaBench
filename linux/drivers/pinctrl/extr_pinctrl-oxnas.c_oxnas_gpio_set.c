
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct oxnas_gpio_bank {scalar_t__ reg_base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 scalar_t__ OUTPUT_CLEAR ;
 scalar_t__ OUTPUT_SET ;
 struct oxnas_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void oxnas_gpio_set(struct gpio_chip *chip, unsigned int offset,
          int value)
{
 struct oxnas_gpio_bank *bank = gpiochip_get_data(chip);
 u32 mask = BIT(offset);

 if (value)
  writel_relaxed(mask, bank->reg_base + OUTPUT_SET);
 else
  writel_relaxed(mask, bank->reg_base + OUTPUT_CLEAR);
}
