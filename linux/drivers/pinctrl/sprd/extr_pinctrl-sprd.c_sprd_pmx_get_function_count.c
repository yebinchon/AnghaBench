
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int PIN_FUNC_MAX ;

__attribute__((used)) static int sprd_pmx_get_function_count(struct pinctrl_dev *pctldev)
{
 return PIN_FUNC_MAX;
}
