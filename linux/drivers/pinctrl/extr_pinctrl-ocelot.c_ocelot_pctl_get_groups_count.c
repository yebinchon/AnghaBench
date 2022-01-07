
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct ocelot_pinctrl {TYPE_1__* desc; } ;
struct TYPE_2__ {int npins; } ;


 struct ocelot_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int ocelot_pctl_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct ocelot_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);

 return info->desc->npins;
}
