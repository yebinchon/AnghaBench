
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct atmel_pioctrl {int npins; struct atmel_group* groups; } ;
struct atmel_group {unsigned int pin; } ;


 struct atmel_pioctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static struct atmel_group *
atmel_pctl_find_group_by_pin(struct pinctrl_dev *pctldev, unsigned pin)
{
 struct atmel_pioctrl *atmel_pioctrl = pinctrl_dev_get_drvdata(pctldev);
 int i;

 for (i = 0; i < atmel_pioctrl->npins; i++) {
  struct atmel_group *grp = atmel_pioctrl->groups + i;

  if (grp->pin == pin)
   return grp;
 }

 return ((void*)0);
}
