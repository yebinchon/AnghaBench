
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_pinctrl_group {unsigned long config; int pin; } ;
struct stm32_pinctrl {struct stm32_pinctrl_group* groups; } ;
struct pinctrl_dev {int dummy; } ;


 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct stm32_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int stm32_pconf_parse_conf (struct pinctrl_dev*,int ,int ,int ) ;

__attribute__((used)) static int stm32_pconf_group_set(struct pinctrl_dev *pctldev, unsigned group,
     unsigned long *configs, unsigned num_configs)
{
 struct stm32_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct stm32_pinctrl_group *g = &pctl->groups[group];
 int i, ret;

 for (i = 0; i < num_configs; i++) {
  ret = stm32_pconf_parse_conf(pctldev, g->pin,
   pinconf_to_config_param(configs[i]),
   pinconf_to_config_argument(configs[i]));
  if (ret < 0)
   return ret;

  g->config = configs[i];
 }

 return 0;
}
