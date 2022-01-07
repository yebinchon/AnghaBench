
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct palmas_pctrl_chip_info {int num_pin_groups; } ;


 struct palmas_pctrl_chip_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int palmas_pinctrl_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct palmas_pctrl_chip_info *pci = pinctrl_dev_get_drvdata(pctldev);

 return pci->num_pin_groups;
}
