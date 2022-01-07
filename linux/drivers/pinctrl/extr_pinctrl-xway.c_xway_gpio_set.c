
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltq_pinmux_info {int * membase; } ;
struct gpio_chip {int parent; } ;


 int GPIO_OUT (unsigned int) ;
 int PORT_PIN (unsigned int) ;
 struct ltq_pinmux_info* dev_get_drvdata (int ) ;
 int gpio_clearbit (int ,int ,int ) ;
 int gpio_setbit (int ,int ,int ) ;

__attribute__((used)) static void xway_gpio_set(struct gpio_chip *chip, unsigned int pin, int val)
{
 struct ltq_pinmux_info *info = dev_get_drvdata(chip->parent);

 if (val)
  gpio_setbit(info->membase[0], GPIO_OUT(pin), PORT_PIN(pin));
 else
  gpio_clearbit(info->membase[0], GPIO_OUT(pin), PORT_PIN(pin));
}
