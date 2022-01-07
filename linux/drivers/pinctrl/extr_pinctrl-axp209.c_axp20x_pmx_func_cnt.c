
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct axp20x_pctl {int funcs; } ;


 int ARRAY_SIZE (int ) ;
 struct axp20x_pctl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int axp20x_pmx_func_cnt(struct pinctrl_dev *pctldev)
{
 struct axp20x_pctl *pctl = pinctrl_dev_get_drvdata(pctldev);

 return ARRAY_SIZE(pctl->funcs);
}
