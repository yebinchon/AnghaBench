
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {struct gpio_chip* gc; } ;
struct pinctrl_dev {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int oxnas_gpio_direction_input (struct gpio_chip*,unsigned int) ;
 int oxnas_gpio_direction_output (struct gpio_chip*,unsigned int,int ) ;

__attribute__((used)) static int oxnas_gpio_set_direction(struct pinctrl_dev *pctldev,
        struct pinctrl_gpio_range *range,
        unsigned int offset, bool input)
{
 struct gpio_chip *chip = range->gc;

 if (input)
  oxnas_gpio_direction_input(chip, offset);
 else
  oxnas_gpio_direction_output(chip, offset, 0);

 return 0;
}
