
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u300_gpio {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int U300_PIN_BIT (unsigned int) ;
 int U300_PIN_REG (unsigned int,int ) ;
 int dir ;
 struct u300_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int readl (int ) ;

__attribute__((used)) static int u300_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct u300_gpio *gpio = gpiochip_get_data(chip);

 return !!(readl(U300_PIN_REG(offset, dir)) & U300_PIN_BIT(offset));
}
