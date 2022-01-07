
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_pinctrl {int nfunctions; } ;
struct pinctrl_dev {int dummy; } ;


 struct st_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int st_pmx_get_funcs_count(struct pinctrl_dev *pctldev)
{
 struct st_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);

 return info->nfunctions;
}
