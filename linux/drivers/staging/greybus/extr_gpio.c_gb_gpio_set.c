
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gpio_chip {int dummy; } ;
struct gb_gpio_controller {int dummy; } ;


 int gb_gpio_set_value_operation (struct gb_gpio_controller*,int ,int) ;
 struct gb_gpio_controller* gpio_chip_to_gb_gpio_controller (struct gpio_chip*) ;

__attribute__((used)) static void gb_gpio_set(struct gpio_chip *chip, unsigned int offset, int value)
{
 struct gb_gpio_controller *ggc = gpio_chip_to_gb_gpio_controller(chip);

 gb_gpio_set_value_operation(ggc, (u8)offset, !!value);
}
