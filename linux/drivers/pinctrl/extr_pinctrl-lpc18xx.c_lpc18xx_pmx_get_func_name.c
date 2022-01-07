
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 char const** lpc18xx_function_names ;

__attribute__((used)) static const char *lpc18xx_pmx_get_func_name(struct pinctrl_dev *pctldev,
          unsigned function)
{
 return lpc18xx_function_names[function];
}
