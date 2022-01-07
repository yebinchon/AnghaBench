
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct bcm2835_pinctrl {int dummy; } ;
typedef enum bcm2835_fsel { ____Placeholder_bcm2835_fsel } bcm2835_fsel ;


 int BCM2835_FSEL_GPIO_IN ;
 int BCM2835_FSEL_GPIO_OUT ;
 int EINVAL ;
 int bcm2835_pinctrl_fsel_get (struct bcm2835_pinctrl*,unsigned int) ;
 struct bcm2835_pinctrl* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int bcm2835_gpio_get_direction(struct gpio_chip *chip, unsigned int offset)
{
 struct bcm2835_pinctrl *pc = gpiochip_get_data(chip);
 enum bcm2835_fsel fsel = bcm2835_pinctrl_fsel_get(pc, offset);


 if (fsel > BCM2835_FSEL_GPIO_OUT)
  return -EINVAL;

 return (fsel == BCM2835_FSEL_GPIO_IN);
}
