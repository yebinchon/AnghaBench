
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct chv_pinctrl {TYPE_1__* community; } ;
struct TYPE_2__ {int nfunctions; } ;


 struct chv_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int chv_get_functions_count(struct pinctrl_dev *pctldev)
{
 struct chv_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);

 return pctrl->community->nfunctions;
}
