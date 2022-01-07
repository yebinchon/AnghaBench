
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct mxs_pinctrl_data {TYPE_2__* soc; } ;
struct TYPE_4__ {TYPE_1__* functions; } ;
struct TYPE_3__ {char const* name; } ;


 struct mxs_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *mxs_pinctrl_get_func_name(struct pinctrl_dev *pctldev,
          unsigned function)
{
 struct mxs_pinctrl_data *d = pinctrl_dev_get_drvdata(pctldev);

 return d->soc->functions[function].name;
}
