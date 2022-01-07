
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_xusb_padctl {TYPE_2__* soc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* functions; } ;
struct TYPE_3__ {unsigned int num_groups; char** groups; } ;


 struct tegra_xusb_padctl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int tegra_xusb_padctl_get_function_groups(struct pinctrl_dev *pinctrl,
       unsigned int function,
       const char * const **groups,
       unsigned * const num_groups)
{
 struct tegra_xusb_padctl *padctl = pinctrl_dev_get_drvdata(pinctrl);

 *num_groups = padctl->soc->functions[function].num_groups;
 *groups = padctl->soc->functions[function].groups;

 return 0;
}
