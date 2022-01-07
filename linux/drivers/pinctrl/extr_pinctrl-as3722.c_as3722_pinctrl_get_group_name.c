
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct as3722_pctrl_info {TYPE_1__* pin_groups; } ;
struct TYPE_2__ {char const* name; } ;


 struct as3722_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *as3722_pinctrl_get_group_name(struct pinctrl_dev *pctldev,
  unsigned group)
{
 struct as3722_pctrl_info *as_pci = pinctrl_dev_get_drvdata(pctldev);

 return as_pci->pin_groups[group].name;
}
