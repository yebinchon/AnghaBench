
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rza1_port {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct rza1_port* gpiochip_get_data (struct gpio_chip*) ;
 int rza1_pin_get_direction (struct rza1_port*,unsigned int) ;

__attribute__((used)) static int rza1_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
{
 struct rza1_port *port = gpiochip_get_data(chip);

 return rza1_pin_get_direction(port, gpio);
}
