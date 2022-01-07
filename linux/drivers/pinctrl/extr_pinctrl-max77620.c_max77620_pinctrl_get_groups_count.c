
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct max77620_pctrl_info {int num_pin_groups; } ;


 struct max77620_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int max77620_pinctrl_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct max77620_pctrl_info *mpci = pinctrl_dev_get_drvdata(pctldev);

 return mpci->num_pin_groups;
}
