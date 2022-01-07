
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {int chipco; } ;
struct gpio_chip {int dummy; } ;


 struct ssb_bus* gpiochip_get_data (struct gpio_chip*) ;
 int ssb_chipco_gpio_control (int *,int,int ) ;
 int ssb_chipco_gpio_pulldown (int *,int,int ) ;
 int ssb_chipco_gpio_pullup (int *,int,int) ;

__attribute__((used)) static int ssb_gpio_chipco_request(struct gpio_chip *chip, unsigned int gpio)
{
 struct ssb_bus *bus = gpiochip_get_data(chip);

 ssb_chipco_gpio_control(&bus->chipco, 1 << gpio, 0);

 ssb_chipco_gpio_pulldown(&bus->chipco, 1 << gpio, 0);

 ssb_chipco_gpio_pullup(&bus->chipco, 1 << gpio, 1 << gpio);

 return 0;
}
