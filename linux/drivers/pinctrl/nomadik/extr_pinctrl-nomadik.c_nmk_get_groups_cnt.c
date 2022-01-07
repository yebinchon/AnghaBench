
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct nmk_pinctrl {TYPE_1__* soc; } ;
struct TYPE_2__ {int ngroups; } ;


 struct nmk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int nmk_get_groups_cnt(struct pinctrl_dev *pctldev)
{
 struct nmk_pinctrl *npct = pinctrl_dev_get_drvdata(pctldev);

 return npct->soc->ngroups;
}
