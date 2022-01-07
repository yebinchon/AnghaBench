
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 char const** pmic_mpp_functions ;

__attribute__((used)) static const char *pmic_mpp_get_function_name(struct pinctrl_dev *pctldev,
           unsigned function)
{
 return pmic_mpp_functions[function];
}
