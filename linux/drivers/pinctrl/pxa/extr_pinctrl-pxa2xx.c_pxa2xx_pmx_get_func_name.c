
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_pinctrl_function {char const* name; } ;
struct pxa_pinctrl {struct pxa_pinctrl_function* functions; } ;
struct pinctrl_dev {int dummy; } ;


 struct pxa_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *pxa2xx_pmx_get_func_name(struct pinctrl_dev *pctldev,
         unsigned function)
{
 struct pxa_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct pxa_pinctrl_function *pf = pctl->functions + function;

 return pf->name;
}
