
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_pinctrl_soc_info {int ngroups; } ;
struct sprd_pinctrl {struct sprd_pinctrl_soc_info* info; } ;
struct pinctrl_dev {int dummy; } ;


 struct sprd_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int sprd_pctrl_group_count(struct pinctrl_dev *pctldev)
{
 struct sprd_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct sprd_pinctrl_soc_info *info = pctl->info;

 return info->ngroups;
}
