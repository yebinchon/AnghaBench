
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_pinctrl {int dummy; } ;


 int GPIO_REG_OFFSET (unsigned int) ;
 int GPIO_REG_SHIFT (unsigned int) ;
 int bcm2835_gpio_rd (struct bcm2835_pinctrl*,unsigned int) ;

__attribute__((used)) static inline int bcm2835_gpio_get_bit(struct bcm2835_pinctrl *pc, unsigned reg,
  unsigned bit)
{
 reg += GPIO_REG_OFFSET(bit) * 4;
 return (bcm2835_gpio_rd(pc, reg) >> GPIO_REG_SHIFT(bit)) & 1;
}
