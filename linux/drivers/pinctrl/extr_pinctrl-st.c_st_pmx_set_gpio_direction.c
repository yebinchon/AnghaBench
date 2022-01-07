
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_gpio_bank {int pc; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int ST_GPIO_DIRECTION_IN ;
 int ST_GPIO_DIRECTION_OUT ;
 struct st_gpio_bank* gpio_range_to_bank (struct pinctrl_gpio_range*) ;
 int st_gpio_direction (struct st_gpio_bank*,unsigned int,int ) ;
 int st_pctl_set_function (int *,unsigned int,int ) ;

__attribute__((used)) static int st_pmx_set_gpio_direction(struct pinctrl_dev *pctldev,
   struct pinctrl_gpio_range *range, unsigned gpio,
   bool input)
{
 struct st_gpio_bank *bank = gpio_range_to_bank(range);





 st_pctl_set_function(&bank->pc, gpio, 0);
 st_gpio_direction(bank, gpio, input ?
  ST_GPIO_DIRECTION_IN : ST_GPIO_DIRECTION_OUT);

 return 0;
}
