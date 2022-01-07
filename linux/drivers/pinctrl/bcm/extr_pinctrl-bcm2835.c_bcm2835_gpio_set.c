
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct bcm2835_pinctrl {int dummy; } ;


 int GPCLR0 ;
 int GPSET0 ;
 int bcm2835_gpio_set_bit (struct bcm2835_pinctrl*,int ,unsigned int) ;
 struct bcm2835_pinctrl* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void bcm2835_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct bcm2835_pinctrl *pc = gpiochip_get_data(chip);

 bcm2835_gpio_set_bit(pc, value ? GPSET0 : GPCLR0, offset);
}
