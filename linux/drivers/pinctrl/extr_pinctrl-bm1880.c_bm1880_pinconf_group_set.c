
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct bm1880_pinctrl {struct bm1880_pctrl_group* groups; } ;
struct bm1880_pctrl_group {int npins; int * pins; } ;


 int bm1880_pinconf_cfg_set (struct pinctrl_dev*,int ,unsigned long*,unsigned int) ;
 struct bm1880_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int bm1880_pinconf_group_set(struct pinctrl_dev *pctldev,
        unsigned int selector,
        unsigned long *configs,
        unsigned int num_configs)
{
 int i, ret;
 struct bm1880_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);
 const struct bm1880_pctrl_group *pgrp = &pctrl->groups[selector];

 for (i = 0; i < pgrp->npins; i++) {
  ret = bm1880_pinconf_cfg_set(pctldev, pgrp->pins[i], configs,
          num_configs);
  if (ret)
   return ret;
 }

 return 0;
}
