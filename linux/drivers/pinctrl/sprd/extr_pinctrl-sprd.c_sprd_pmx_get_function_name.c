
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;







__attribute__((used)) static const char *sprd_pmx_get_function_name(struct pinctrl_dev *pctldev,
           unsigned int selector)
{
 switch (selector) {
 case 131:
  return "func1";
 case 130:
  return "func2";
 case 129:
  return "func3";
 case 128:
  return "func4";
 default:
  return "null";
 }
}
