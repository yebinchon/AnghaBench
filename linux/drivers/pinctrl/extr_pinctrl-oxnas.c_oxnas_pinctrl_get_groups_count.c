
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct oxnas_pinctrl {int ngroups; } ;


 struct oxnas_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int oxnas_pinctrl_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct oxnas_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 return pctl->ngroups;
}
