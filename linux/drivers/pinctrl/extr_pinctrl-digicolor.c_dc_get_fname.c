
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 char const** dc_functions ;

__attribute__((used)) static const char *dc_get_fname(struct pinctrl_dev *pctldev, unsigned selector)
{
 return dc_functions[selector];
}
