
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct imx1_pinctrl_soc_info {TYPE_1__* functions; } ;
struct imx1_pinctrl {struct imx1_pinctrl_soc_info* info; } ;
struct TYPE_2__ {char const* name; } ;


 struct imx1_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *imx1_pmx_get_func_name(struct pinctrl_dev *pctldev,
       unsigned selector)
{
 struct imx1_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 const struct imx1_pinctrl_soc_info *info = ipctl->info;

 return info->functions[selector].name;
}
