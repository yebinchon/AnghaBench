
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct intel_pinctrl {TYPE_1__* soc; } ;
struct TYPE_2__ {int nfunctions; } ;


 struct intel_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int intel_get_functions_count(struct pinctrl_dev *pctldev)
{
 struct intel_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);

 return pctrl->soc->nfunctions;
}
