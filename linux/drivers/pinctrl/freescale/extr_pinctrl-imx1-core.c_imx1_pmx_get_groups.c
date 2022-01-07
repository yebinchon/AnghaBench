
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct imx1_pinctrl_soc_info {TYPE_1__* functions; } ;
struct imx1_pinctrl {struct imx1_pinctrl_soc_info* info; } ;
struct TYPE_2__ {char** groups; unsigned int num_groups; } ;


 struct imx1_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int imx1_pmx_get_groups(struct pinctrl_dev *pctldev, unsigned selector,
          const char * const **groups,
          unsigned * const num_groups)
{
 struct imx1_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 const struct imx1_pinctrl_soc_info *info = ipctl->info;

 *groups = info->functions[selector].groups;
 *num_groups = info->functions[selector].num_groups;

 return 0;
}
