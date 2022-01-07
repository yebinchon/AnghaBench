
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct at91_pinctrl {TYPE_1__* groups; } ;
struct TYPE_2__ {char const* name; } ;


 struct at91_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *at91_get_group_name(struct pinctrl_dev *pctldev,
           unsigned selector)
{
 struct at91_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);

 return info->groups[selector].name;
}
