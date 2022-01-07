
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {struct gpio_chip* gc; } ;
struct pinctrl_dev {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int pic32_gpio_direction_input (struct gpio_chip*,unsigned int) ;
 int pic32_gpio_direction_output (struct gpio_chip*,unsigned int,int ) ;

__attribute__((used)) static int pic32_gpio_set_direction(struct pinctrl_dev *pctldev,
           struct pinctrl_gpio_range *range,
           unsigned offset, bool input)
{
 struct gpio_chip *chip = range->gc;

 if (input)
  pic32_gpio_direction_input(chip, offset);
 else
  pic32_gpio_direction_output(chip, offset, 0);

 return 0;
}
