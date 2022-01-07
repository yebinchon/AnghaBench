
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct atmel_pioctrl {int npins; } ;


 struct atmel_pioctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int atmel_pctl_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct atmel_pioctrl *atmel_pioctrl = pinctrl_dev_get_drvdata(pctldev);

 return atmel_pioctrl->npins;
}
