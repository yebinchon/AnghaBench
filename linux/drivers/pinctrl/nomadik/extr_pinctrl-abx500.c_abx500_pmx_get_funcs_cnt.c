
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct abx500_pinctrl {TYPE_1__* soc; } ;
struct TYPE_2__ {int nfunctions; } ;


 struct abx500_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int abx500_pmx_get_funcs_cnt(struct pinctrl_dev *pctldev)
{
 struct abx500_pinctrl *pct = pinctrl_dev_get_drvdata(pctldev);

 return pct->soc->nfunctions;
}
