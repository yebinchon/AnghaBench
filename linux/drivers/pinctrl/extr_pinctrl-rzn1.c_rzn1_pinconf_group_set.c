
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rzn1_pinctrl {int dev; struct rzn1_pin_group* groups; } ;
struct rzn1_pin_group {unsigned int npins; unsigned int* pins; int name; } ;
struct pinctrl_dev {int dummy; } ;


 int dev_dbg (int ,char*,int ,unsigned int,unsigned long*,unsigned int) ;
 struct rzn1_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int rzn1_pinconf_set (struct pinctrl_dev*,unsigned int,unsigned long*,unsigned int) ;

__attribute__((used)) static int rzn1_pinconf_group_set(struct pinctrl_dev *pctldev,
      unsigned int selector,
      unsigned long *configs,
      unsigned int num_configs)
{
 struct rzn1_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 struct rzn1_pin_group *grp = &ipctl->groups[selector];
 unsigned int i;
 int ret;

 dev_dbg(ipctl->dev, "group set %s selector:%u configs:%p/%d\n",
  grp->name, selector, configs, num_configs);

 for (i = 0; i < grp->npins; i++) {
  unsigned int pin = grp->pins[i];

  ret = rzn1_pinconf_set(pctldev, pin, configs, num_configs);
  if (ret)
   return ret;
 }

 return 0;
}
