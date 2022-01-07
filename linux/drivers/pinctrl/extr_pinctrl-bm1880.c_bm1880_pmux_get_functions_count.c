
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct bm1880_pinctrl {int nfuncs; } ;


 struct bm1880_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int bm1880_pmux_get_functions_count(struct pinctrl_dev *pctldev)
{
 struct bm1880_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);

 return pctrl->nfuncs;
}
