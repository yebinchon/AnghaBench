
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_pinctrl {int dummy; } ;


 unsigned int BIT (int) ;
 int GPIO_REG_OFFSET (unsigned int) ;
 int GPIO_REG_SHIFT (unsigned int) ;
 scalar_t__ GPPUD ;
 scalar_t__ GPPUDCLK0 ;
 int bcm2835_gpio_wr (struct bcm2835_pinctrl*,scalar_t__,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static void bcm2835_pull_config_set(struct bcm2835_pinctrl *pc,
  unsigned int pin, unsigned int arg)
{
 u32 off, bit;

 off = GPIO_REG_OFFSET(pin);
 bit = GPIO_REG_SHIFT(pin);

 bcm2835_gpio_wr(pc, GPPUD, arg & 3);






 udelay(1);
 bcm2835_gpio_wr(pc, GPPUDCLK0 + (off * 4), BIT(bit));
 udelay(1);
 bcm2835_gpio_wr(pc, GPPUDCLK0 + (off * 4), 0);
}
