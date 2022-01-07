
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 unsigned int PMIC_GPIO_PHYSICAL_OFFSET ;

__attribute__((used)) static unsigned int pmic_gpio_child_offset_to_irq(struct gpio_chip *chip,
        unsigned int offset)
{
 return offset + PMIC_GPIO_PHYSICAL_OFFSET;
}
