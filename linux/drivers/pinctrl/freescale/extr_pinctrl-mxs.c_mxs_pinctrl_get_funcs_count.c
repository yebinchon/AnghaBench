
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct mxs_pinctrl_data {TYPE_1__* soc; } ;
struct TYPE_2__ {int nfunctions; } ;


 struct mxs_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mxs_pinctrl_get_funcs_count(struct pinctrl_dev *pctldev)
{
 struct mxs_pinctrl_data *d = pinctrl_dev_get_drvdata(pctldev);

 return d->soc->nfunctions;
}
