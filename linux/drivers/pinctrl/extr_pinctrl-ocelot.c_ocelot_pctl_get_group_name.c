
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct ocelot_pinctrl {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {char const* name; } ;


 struct ocelot_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *ocelot_pctl_get_group_name(struct pinctrl_dev *pctldev,
           unsigned int group)
{
 struct ocelot_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);

 return info->desc->pins[group].name;
}
