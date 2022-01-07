
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct byt_gpio {TYPE_1__* soc_data; } ;
struct TYPE_2__ {int nfunctions; } ;


 struct byt_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int byt_get_functions_count(struct pinctrl_dev *pctldev)
{
 struct byt_gpio *vg = pinctrl_dev_get_drvdata(pctldev);

 return vg->soc_data->nfunctions;
}
