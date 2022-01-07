
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk805_pctrl_info {TYPE_1__* functions; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {int mux_option; } ;


 int _rk805_pinctrl_set_mux (struct pinctrl_dev*,int,int) ;
 struct rk805_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int rk805_pinctrl_set_mux(struct pinctrl_dev *pctldev,
     unsigned int function,
     unsigned int group)
{
 struct rk805_pctrl_info *pci = pinctrl_dev_get_drvdata(pctldev);
 int mux = pci->functions[function].mux_option;
 int offset = group;

 return _rk805_pinctrl_set_mux(pctldev, offset, mux);
}
