
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl_group {unsigned long config; int pin; } ;
struct mtk_pinctrl {struct mtk_pinctrl_group* groups; } ;


 int mtk_pinconf_set (struct pinctrl_dev*,int ,int ,int ) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct mtk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mtk_pconf_group_set(struct pinctrl_dev *pctldev, unsigned group,
          unsigned long *configs, unsigned num_configs)
{
 struct mtk_pinctrl *hw = pinctrl_dev_get_drvdata(pctldev);
 struct mtk_pinctrl_group *grp = &hw->groups[group];
 int i, ret;

 for (i = 0; i < num_configs; i++) {
  ret = mtk_pinconf_set(pctldev, grp->pin,
          pinconf_to_config_param(configs[i]),
          pinconf_to_config_argument(configs[i]));
  if (ret < 0)
   return ret;

  grp->config = configs[i];
 }

 return 0;
}
