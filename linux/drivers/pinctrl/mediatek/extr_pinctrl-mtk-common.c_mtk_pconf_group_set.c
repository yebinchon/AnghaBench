
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl_group {unsigned long config; int pin; } ;
struct mtk_pinctrl {struct mtk_pinctrl_group* groups; } ;


 int mtk_pconf_parse_conf (struct pinctrl_dev*,int ,int ,int ) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct mtk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mtk_pconf_group_set(struct pinctrl_dev *pctldev, unsigned group,
     unsigned long *configs, unsigned num_configs)
{
 struct mtk_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct mtk_pinctrl_group *g = &pctl->groups[group];
 int i, ret;

 for (i = 0; i < num_configs; i++) {
  ret = mtk_pconf_parse_conf(pctldev, g->pin,
   pinconf_to_config_param(configs[i]),
   pinconf_to_config_argument(configs[i]));
  if (ret < 0)
   return ret;

  g->config = configs[i];
 }

 return 0;
}
