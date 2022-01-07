
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct mrfld_pinctrl {int nfunctions; } ;


 struct mrfld_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mrfld_get_functions_count(struct pinctrl_dev *pctldev)
{
 struct mrfld_pinctrl *mp = pinctrl_dev_get_drvdata(pctldev);

 return mp->nfunctions;
}
