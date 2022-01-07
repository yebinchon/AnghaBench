
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltq_pinmux_info {int * membase; } ;
struct gpio_chip {int parent; } ;


 int GPIO_DIR (unsigned int) ;
 int PORT_PIN (unsigned int) ;
 struct ltq_pinmux_info* dev_get_drvdata (int ) ;
 int gpio_clearbit (int ,int ,int ) ;

__attribute__((used)) static int xway_gpio_dir_in(struct gpio_chip *chip, unsigned int pin)
{
 struct ltq_pinmux_info *info = dev_get_drvdata(chip->parent);

 gpio_clearbit(info->membase[0], GPIO_DIR(pin), PORT_PIN(pin));

 return 0;
}
