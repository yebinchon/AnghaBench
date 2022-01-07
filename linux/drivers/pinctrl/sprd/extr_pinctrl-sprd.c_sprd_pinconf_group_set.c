
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_pinctrl_soc_info {unsigned int ngroups; struct sprd_pin_group* groups; } ;
struct sprd_pinctrl {struct sprd_pinctrl_soc_info* info; } ;
struct sprd_pin_group {int npins; unsigned int* pins; } ;
struct pinctrl_dev {int dummy; } ;


 int EINVAL ;
 struct sprd_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int sprd_pinconf_set (struct pinctrl_dev*,unsigned int,unsigned long*,unsigned int) ;

__attribute__((used)) static int sprd_pinconf_group_set(struct pinctrl_dev *pctldev,
      unsigned int selector,
      unsigned long *configs,
      unsigned int num_configs)
{
 struct sprd_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct sprd_pinctrl_soc_info *info = pctl->info;
 struct sprd_pin_group *grp;
 int ret, i;

 if (selector >= info->ngroups)
  return -EINVAL;

 grp = &info->groups[selector];

 for (i = 0; i < grp->npins; i++) {
  unsigned int pin_id = grp->pins[i];

  ret = sprd_pinconf_set(pctldev, pin_id, configs, num_configs);
  if (ret)
   return ret;
 }

 return 0;
}
