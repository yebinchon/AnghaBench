
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsp_gpio {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 scalar_t__ NSP_GPIO_DATA_IN ;
 struct nsp_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int nsp_gpio_get(struct gpio_chip *gc, unsigned gpio)
{
 struct nsp_gpio *chip = gpiochip_get_data(gc);

 return !!(readl(chip->base + NSP_GPIO_DATA_IN) & BIT(gpio));
}
