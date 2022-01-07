
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ regs; } ;
struct sirfsoc_gpio_chip {TYPE_1__ chip; } ;
struct sirfsoc_gpio_bank {int lock; int id; } ;
struct gpio_chip {int dummy; } ;


 int SIRFSOC_GPIO_CTL_DATAIN_MASK ;
 scalar_t__ SIRFSOC_GPIO_CTRL (int ,unsigned int) ;
 struct sirfsoc_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int readl (scalar_t__) ;
 struct sirfsoc_gpio_bank* sirfsoc_gpio_to_bank (struct sirfsoc_gpio_chip*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sirfsoc_gpio_get_value(struct gpio_chip *chip, unsigned offset)
{
 struct sirfsoc_gpio_chip *sgpio = gpiochip_get_data(chip);
 struct sirfsoc_gpio_bank *bank = sirfsoc_gpio_to_bank(sgpio, offset);
 u32 val;
 unsigned long flags;

 spin_lock_irqsave(&bank->lock, flags);

 val = readl(sgpio->chip.regs + SIRFSOC_GPIO_CTRL(bank->id, offset));

 spin_unlock_irqrestore(&bank->lock, flags);

 return !!(val & SIRFSOC_GPIO_CTL_DATAIN_MASK);
}
