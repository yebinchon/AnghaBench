
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct intel_pingroup {int mode; scalar_t__ modes; } ;
struct intel_function {int name; } ;
struct byt_gpio {TYPE_1__* soc_data; } ;
struct TYPE_2__ {struct intel_pingroup* groups; struct intel_function* functions; } ;


 int BYT_DEFAULT_GPIO_MUX ;
 int byt_set_group_mixed_mux (struct byt_gpio*,struct intel_pingroup const,scalar_t__) ;
 int byt_set_group_simple_mux (struct byt_gpio*,struct intel_pingroup const,int ) ;
 struct byt_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int byt_set_mux(struct pinctrl_dev *pctldev, unsigned int func_selector,
         unsigned int group_selector)
{
 struct byt_gpio *vg = pinctrl_dev_get_drvdata(pctldev);
 const struct intel_function func = vg->soc_data->functions[func_selector];
 const struct intel_pingroup group = vg->soc_data->groups[group_selector];

 if (group.modes)
  byt_set_group_mixed_mux(vg, group, group.modes);
 else if (!strcmp(func.name, "gpio"))
  byt_set_group_simple_mux(vg, group, BYT_DEFAULT_GPIO_MUX);
 else
  byt_set_group_simple_mux(vg, group, group.mode);

 return 0;
}
