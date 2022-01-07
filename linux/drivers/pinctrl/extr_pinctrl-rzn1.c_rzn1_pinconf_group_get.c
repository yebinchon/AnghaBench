
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rzn1_pinctrl {int dev; struct rzn1_pin_group* groups; } ;
struct rzn1_pin_group {unsigned int npins; int * pins; int name; } ;
struct pinctrl_dev {int dummy; } ;


 int ENOTSUPP ;
 int dev_dbg (int ,char*,int ,unsigned int) ;
 struct rzn1_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 scalar_t__ rzn1_pinconf_get (struct pinctrl_dev*,int ,unsigned long*) ;

__attribute__((used)) static int rzn1_pinconf_group_get(struct pinctrl_dev *pctldev,
      unsigned int selector,
      unsigned long *config)
{
 struct rzn1_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 struct rzn1_pin_group *grp = &ipctl->groups[selector];
 unsigned long old = 0;
 unsigned int i;

 dev_dbg(ipctl->dev, "group get %s selector:%u\n", grp->name, selector);

 for (i = 0; i < grp->npins; i++) {
  if (rzn1_pinconf_get(pctldev, grp->pins[i], config))
   return -ENOTSUPP;


  if (i && (old != *config))
   return -ENOTSUPP;

  old = *config;
 }

 return 0;
}
