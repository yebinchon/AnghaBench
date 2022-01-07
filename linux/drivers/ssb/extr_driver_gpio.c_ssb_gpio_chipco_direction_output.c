
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {int chipco; } ;
struct gpio_chip {int dummy; } ;


 struct ssb_bus* gpiochip_get_data (struct gpio_chip*) ;
 int ssb_chipco_gpio_out (int *,int,int) ;
 int ssb_chipco_gpio_outen (int *,int,int) ;

__attribute__((used)) static int ssb_gpio_chipco_direction_output(struct gpio_chip *chip,
         unsigned int gpio, int value)
{
 struct ssb_bus *bus = gpiochip_get_data(chip);

 ssb_chipco_gpio_outen(&bus->chipco, 1 << gpio, 1 << gpio);
 ssb_chipco_gpio_out(&bus->chipco, 1 << gpio, value ? 1 << gpio : 0);
 return 0;
}
