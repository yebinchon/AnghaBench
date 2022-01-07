
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_gpio {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int IPROC_GPIO_OUT_EN_OFFSET ;
 unsigned int IPROC_GPIO_REG (unsigned int,int ) ;
 unsigned int IPROC_GPIO_SHIFT (unsigned int) ;
 struct iproc_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int iproc_gpio_get_direction(struct gpio_chip *gc, unsigned int gpio)
{
 struct iproc_gpio *chip = gpiochip_get_data(gc);
 unsigned int offset = IPROC_GPIO_REG(gpio, IPROC_GPIO_OUT_EN_OFFSET);
 unsigned int shift = IPROC_GPIO_SHIFT(gpio);

 return !(readl(chip->base + offset) & BIT(shift));
}
