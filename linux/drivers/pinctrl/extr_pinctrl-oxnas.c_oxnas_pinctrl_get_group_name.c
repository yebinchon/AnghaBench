
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct oxnas_pinctrl {TYPE_1__* groups; } ;
struct TYPE_2__ {char const* name; } ;


 struct oxnas_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *oxnas_pinctrl_get_group_name(struct pinctrl_dev *pctldev,
      unsigned int group)
{
 struct oxnas_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 return pctl->groups[group].name;
}
