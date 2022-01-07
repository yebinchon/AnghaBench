
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 char const** wmt_functions ;

__attribute__((used)) static const char *wmt_pmx_get_function_name(struct pinctrl_dev *pctldev,
          unsigned selector)
{
 return wmt_functions[selector];
}
