
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct axp20x_pctl {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {char const* name; } ;


 struct axp20x_pctl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *axp20x_group_name(struct pinctrl_dev *pctldev,
         unsigned int selector)
{
 struct axp20x_pctl *pctl = pinctrl_dev_get_drvdata(pctldev);

 return pctl->desc->pins[selector].name;
}
