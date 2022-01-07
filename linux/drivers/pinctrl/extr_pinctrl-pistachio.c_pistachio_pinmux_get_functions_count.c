
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pistachio_pinctrl {int nfunctions; } ;
struct pinctrl_dev {int dummy; } ;


 struct pistachio_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int pistachio_pinmux_get_functions_count(struct pinctrl_dev *pctldev)
{
 struct pistachio_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 return pctl->nfunctions;
}
