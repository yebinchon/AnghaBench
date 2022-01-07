
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct sunxi_pinctrl {int lock; scalar_t__ membase; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ BIT (int ) ;
 struct sunxi_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ readl (scalar_t__) ;
 int sunxi_data_offset (unsigned int) ;
 scalar_t__ sunxi_data_reg (unsigned int) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void sunxi_pinctrl_gpio_set(struct gpio_chip *chip,
    unsigned offset, int value)
{
 struct sunxi_pinctrl *pctl = gpiochip_get_data(chip);
 u32 reg = sunxi_data_reg(offset);
 u8 index = sunxi_data_offset(offset);
 unsigned long flags;
 u32 regval;

 raw_spin_lock_irqsave(&pctl->lock, flags);

 regval = readl(pctl->membase + reg);

 if (value)
  regval |= BIT(index);
 else
  regval &= ~(BIT(index));

 writel(regval, pctl->membase + reg);

 raw_spin_unlock_irqrestore(&pctl->lock, flags);
}
