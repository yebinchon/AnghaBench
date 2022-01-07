
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int AB8500_GPIO_DIR1_REG ;
 int ABX500_GPIO_INPUT ;
 int abx500_gpio_set_bits (struct gpio_chip*,int ,unsigned int,int ) ;

__attribute__((used)) static int abx500_gpio_direction_input(struct gpio_chip *chip, unsigned offset)
{

 return abx500_gpio_set_bits(chip,
    AB8500_GPIO_DIR1_REG,
    offset,
    ABX500_GPIO_INPUT);
}
