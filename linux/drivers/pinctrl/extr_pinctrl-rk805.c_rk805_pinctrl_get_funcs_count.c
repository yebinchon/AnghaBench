
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk805_pctrl_info {int num_functions; } ;
struct pinctrl_dev {int dummy; } ;


 struct rk805_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int rk805_pinctrl_get_funcs_count(struct pinctrl_dev *pctldev)
{
 struct rk805_pctrl_info *pci = pinctrl_dev_get_drvdata(pctldev);

 return pci->num_functions;
}
