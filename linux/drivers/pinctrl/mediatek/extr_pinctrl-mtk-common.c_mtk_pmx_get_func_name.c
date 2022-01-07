
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 char const** mtk_gpio_functions ;

__attribute__((used)) static const char *mtk_pmx_get_func_name(struct pinctrl_dev *pctldev,
        unsigned selector)
{
 return mtk_gpio_functions[selector];
}
