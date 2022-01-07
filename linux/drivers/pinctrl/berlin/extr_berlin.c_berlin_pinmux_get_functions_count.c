
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct berlin_pinctrl {int nfunctions; } ;


 struct berlin_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int berlin_pinmux_get_functions_count(struct pinctrl_dev *pctrl_dev)
{
 struct berlin_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctrl_dev);

 return pctrl->nfunctions;
}
