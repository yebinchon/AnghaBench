
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct axp20x_pctl {TYPE_1__* funcs; } ;
struct TYPE_2__ {char const* name; } ;


 struct axp20x_pctl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *axp20x_pmx_func_name(struct pinctrl_dev *pctldev,
     unsigned int selector)
{
 struct axp20x_pctl *pctl = pinctrl_dev_get_drvdata(pctldev);

 return pctl->funcs[selector].name;
}
