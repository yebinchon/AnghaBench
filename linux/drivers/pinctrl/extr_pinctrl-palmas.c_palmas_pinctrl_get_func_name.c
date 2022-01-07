
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct palmas_pctrl_chip_info {TYPE_1__* functions; } ;
struct TYPE_2__ {char const* name; } ;


 struct palmas_pctrl_chip_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *palmas_pinctrl_get_func_name(struct pinctrl_dev *pctldev,
   unsigned function)
{
 struct palmas_pctrl_chip_info *pci = pinctrl_dev_get_drvdata(pctldev);

 return pci->functions[function].name;
}
