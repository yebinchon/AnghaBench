
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct axp20x_pctl {TYPE_1__* desc; } ;
struct TYPE_2__ {int npins; } ;


 struct axp20x_pctl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int axp20x_groups_cnt(struct pinctrl_dev *pctldev)
{
 struct axp20x_pctl *pctl = pinctrl_dev_get_drvdata(pctldev);

 return pctl->desc->npins;
}
