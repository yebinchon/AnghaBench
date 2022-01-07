
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltq_pinmux_info {int * membase; } ;
struct gpio_chip {int parent; } ;


 int GPIO3_OD ;
 int GPIO_DIR (unsigned int) ;
 int GPIO_OD (unsigned int) ;
 scalar_t__ PORT (unsigned int) ;
 scalar_t__ PORT3 ;
 int PORT_PIN (unsigned int) ;
 struct ltq_pinmux_info* dev_get_drvdata (int ) ;
 int gpio_setbit (int ,int ,int ) ;
 int xway_gpio_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int xway_gpio_dir_out(struct gpio_chip *chip, unsigned int pin, int val)
{
 struct ltq_pinmux_info *info = dev_get_drvdata(chip->parent);

 if (PORT(pin) == PORT3)
  gpio_setbit(info->membase[0], GPIO3_OD, PORT_PIN(pin));
 else
  gpio_setbit(info->membase[0], GPIO_OD(pin), PORT_PIN(pin));
 gpio_setbit(info->membase[0], GPIO_DIR(pin), PORT_PIN(pin));
 xway_gpio_set(chip, pin, val);

 return 0;
}
