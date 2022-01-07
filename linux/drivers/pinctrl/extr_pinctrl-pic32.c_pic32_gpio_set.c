
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pic32_gpio_bank {scalar_t__ reg_base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 scalar_t__ PIC32_CLR (int ) ;
 scalar_t__ PIC32_SET (int ) ;
 int PORT_REG ;
 struct pic32_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void pic32_gpio_set(struct gpio_chip *chip, unsigned offset,
          int value)
{
 struct pic32_gpio_bank *bank = gpiochip_get_data(chip);
 u32 mask = BIT(offset);

 if (value)
  writel(mask, bank->reg_base + PIC32_SET(PORT_REG));
 else
  writel(mask, bank->reg_base + PIC32_CLR(PORT_REG));
}
