
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8xxx_mpp {int npins; } ;
struct pinctrl_dev {int dummy; } ;


 struct pm8xxx_mpp* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int pm8xxx_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct pm8xxx_mpp *pctrl = pinctrl_dev_get_drvdata(pctldev);

 return pctrl->npins;
}
