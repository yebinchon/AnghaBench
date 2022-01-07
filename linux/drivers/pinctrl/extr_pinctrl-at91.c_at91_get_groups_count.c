
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct at91_pinctrl {int ngroups; } ;


 struct at91_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int at91_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct at91_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);

 return info->ngroups;
}
