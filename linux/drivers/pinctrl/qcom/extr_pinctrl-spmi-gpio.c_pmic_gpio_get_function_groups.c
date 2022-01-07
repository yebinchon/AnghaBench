
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {unsigned int npins; } ;


 char** pmic_gpio_groups ;

__attribute__((used)) static int pmic_gpio_get_function_groups(struct pinctrl_dev *pctldev,
      unsigned function,
      const char *const **groups,
      unsigned *const num_qgroups)
{
 *groups = pmic_gpio_groups;
 *num_qgroups = pctldev->desc->npins;
 return 0;
}
