
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct byt_gpio {TYPE_2__* soc_data; } ;
struct TYPE_4__ {TYPE_1__* functions; } ;
struct TYPE_3__ {char** groups; unsigned int ngroups; } ;


 struct byt_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int byt_get_function_groups(struct pinctrl_dev *pctldev,
       unsigned int selector,
       const char * const **groups,
       unsigned int *num_groups)
{
 struct byt_gpio *vg = pinctrl_dev_get_drvdata(pctldev);

 *groups = vg->soc_data->functions[selector].groups;
 *num_groups = vg->soc_data->functions[selector].ngroups;

 return 0;
}
