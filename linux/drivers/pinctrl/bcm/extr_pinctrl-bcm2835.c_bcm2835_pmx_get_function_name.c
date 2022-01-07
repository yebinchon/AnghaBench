
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 char const** bcm2835_functions ;

__attribute__((used)) static const char *bcm2835_pmx_get_function_name(struct pinctrl_dev *pctldev,
  unsigned selector)
{
 return bcm2835_functions[selector];
}
