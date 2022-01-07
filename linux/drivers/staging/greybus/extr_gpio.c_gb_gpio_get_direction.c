
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct gpio_chip {int dummy; } ;
struct gb_gpio_controller {TYPE_1__* lines; } ;
struct TYPE_2__ {scalar_t__ direction; } ;


 int gb_gpio_get_direction_operation (struct gb_gpio_controller*,size_t) ;
 struct gb_gpio_controller* gpio_chip_to_gb_gpio_controller (struct gpio_chip*) ;

__attribute__((used)) static int gb_gpio_get_direction(struct gpio_chip *chip, unsigned int offset)
{
 struct gb_gpio_controller *ggc = gpio_chip_to_gb_gpio_controller(chip);
 u8 which;
 int ret;

 which = (u8)offset;
 ret = gb_gpio_get_direction_operation(ggc, which);
 if (ret)
  return ret;

 return ggc->lines[which].direction ? 1 : 0;
}
