
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_xusb_padctl {TYPE_2__* soc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* functions; } ;
struct TYPE_3__ {char const* name; } ;


 struct tegra_xusb_padctl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *
tegra_xusb_padctl_get_function_name(struct pinctrl_dev *pinctrl,
        unsigned int function)
{
 struct tegra_xusb_padctl *padctl = pinctrl_dev_get_drvdata(pinctrl);

 return padctl->soc->functions[function].name;
}
