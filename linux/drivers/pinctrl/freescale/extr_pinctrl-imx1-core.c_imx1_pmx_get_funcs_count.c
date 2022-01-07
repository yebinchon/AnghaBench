
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct imx1_pinctrl_soc_info {int nfunctions; } ;
struct imx1_pinctrl {struct imx1_pinctrl_soc_info* info; } ;


 struct imx1_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int imx1_pmx_get_funcs_count(struct pinctrl_dev *pctldev)
{
 struct imx1_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 const struct imx1_pinctrl_soc_info *info = ipctl->info;

 return info->nfunctions;
}
