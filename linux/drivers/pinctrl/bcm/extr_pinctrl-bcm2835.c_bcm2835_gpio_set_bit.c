
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_pinctrl {int dummy; } ;


 int BIT (int ) ;
 int GPIO_REG_OFFSET (unsigned int) ;
 int GPIO_REG_SHIFT (unsigned int) ;
 int bcm2835_gpio_wr (struct bcm2835_pinctrl*,unsigned int,int ) ;

__attribute__((used)) static inline void bcm2835_gpio_set_bit(struct bcm2835_pinctrl *pc,
  unsigned reg, unsigned bit)
{
 reg += GPIO_REG_OFFSET(bit) * 4;
 bcm2835_gpio_wr(pc, reg, BIT(GPIO_REG_SHIFT(bit)));
}
