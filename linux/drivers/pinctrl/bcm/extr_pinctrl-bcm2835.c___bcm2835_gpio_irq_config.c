
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_pinctrl {int dummy; } ;


 int BIT (int ) ;
 int GPIO_REG_OFFSET (unsigned int) ;
 int GPIO_REG_SHIFT (unsigned int) ;
 int bcm2835_gpio_rd (struct bcm2835_pinctrl*,unsigned int) ;
 int bcm2835_gpio_wr (struct bcm2835_pinctrl*,unsigned int,int ) ;

__attribute__((used)) static inline void __bcm2835_gpio_irq_config(struct bcm2835_pinctrl *pc,
 unsigned reg, unsigned offset, bool enable)
{
 u32 value;
 reg += GPIO_REG_OFFSET(offset) * 4;
 value = bcm2835_gpio_rd(pc, reg);
 if (enable)
  value |= BIT(GPIO_REG_SHIFT(offset));
 else
  value &= ~(BIT(GPIO_REG_SHIFT(offset)));
 bcm2835_gpio_wr(pc, reg, value);
}
