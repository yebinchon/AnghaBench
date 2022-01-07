
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int stm32_gpio_functions ;

__attribute__((used)) static int stm32_pmx_get_funcs_cnt(struct pinctrl_dev *pctldev)
{
 return ARRAY_SIZE(stm32_gpio_functions);
}
