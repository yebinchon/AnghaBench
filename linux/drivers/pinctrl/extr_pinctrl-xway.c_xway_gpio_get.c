
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltq_pinmux_info {int * membase; } ;
struct gpio_chip {int parent; } ;


 int GPIO_IN (unsigned int) ;
 int PORT_PIN (unsigned int) ;
 struct ltq_pinmux_info* dev_get_drvdata (int ) ;
 int gpio_getbit (int ,int ,int ) ;

__attribute__((used)) static int xway_gpio_get(struct gpio_chip *chip, unsigned int pin)
{
 struct ltq_pinmux_info *info = dev_get_drvdata(chip->parent);

 return !!gpio_getbit(info->membase[0], GPIO_IN(pin), PORT_PIN(pin));
}
