
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl {int chip; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;







 int mtk_gpio_set (int ,unsigned int,int) ;
 int mtk_pconf_set_driving (struct mtk_pinctrl*,unsigned int,int) ;
 int mtk_pconf_set_ies_smt (struct mtk_pinctrl*,unsigned int,int,int) ;
 int mtk_pconf_set_pull_select (struct mtk_pinctrl*,unsigned int,int,int,int) ;
 int mtk_pmx_gpio_set_direction (struct pinctrl_dev*,int *,unsigned int,int) ;
 struct mtk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mtk_pconf_parse_conf(struct pinctrl_dev *pctldev,
  unsigned int pin, enum pin_config_param param,
  enum pin_config_param arg)
{
 int ret = 0;
 struct mtk_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 switch (param) {
 case 134:
  ret = mtk_pconf_set_pull_select(pctl, pin, 0, 0, arg);
  break;
 case 132:
  ret = mtk_pconf_set_pull_select(pctl, pin, 1, 1, arg);
  break;
 case 133:
  ret = mtk_pconf_set_pull_select(pctl, pin, 1, 0, arg);
  break;
 case 130:
  mtk_pmx_gpio_set_direction(pctldev, ((void*)0), pin, 1);
  ret = mtk_pconf_set_ies_smt(pctl, pin, arg, param);
  break;
 case 128:
  mtk_gpio_set(pctl->chip, pin, arg);
  ret = mtk_pmx_gpio_set_direction(pctldev, ((void*)0), pin, 0);
  break;
 case 129:
  mtk_pmx_gpio_set_direction(pctldev, ((void*)0), pin, 1);
  ret = mtk_pconf_set_ies_smt(pctl, pin, arg, param);
  break;
 case 131:
  ret = mtk_pconf_set_driving(pctl, pin, arg);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
