
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct as3722_pctrl_info {int num_pin_groups; } ;


 struct as3722_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int as3722_pinctrl_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct as3722_pctrl_info *as_pci = pinctrl_dev_get_drvdata(pctldev);

 return as_pci->num_pin_groups;
}
