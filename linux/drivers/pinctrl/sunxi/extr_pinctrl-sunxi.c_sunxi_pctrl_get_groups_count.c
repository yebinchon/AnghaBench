
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_pinctrl {int ngroups; } ;
struct pinctrl_dev {int dummy; } ;


 struct sunxi_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int sunxi_pctrl_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct sunxi_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 return pctl->ngroups;
}
