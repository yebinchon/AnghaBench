
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct lochnagar_pin_priv {int dummy; } ;


 int ENOTSUPP ;


 int lochnagar_aif_set_master (struct lochnagar_pin_priv*,unsigned int,int) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct lochnagar_pin_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int lochnagar_conf_group_set(struct pinctrl_dev *pctldev,
        unsigned int group_idx,
        unsigned long *configs,
        unsigned int num_configs)
{
 struct lochnagar_pin_priv *priv = pinctrl_dev_get_drvdata(pctldev);
 int i, ret;

 for (i = 0; i < num_configs; i++) {
  unsigned int param = pinconf_to_config_param(*configs);

  switch (param) {
  case 128:
   ret = lochnagar_aif_set_master(priv, group_idx, 1);
   if (ret)
    return ret;
   break;
  case 129:
   ret = lochnagar_aif_set_master(priv, group_idx, 0);
   if (ret)
    return ret;
   break;
  default:
   return -ENOTSUPP;
  }

  configs++;
 }

 return 0;
}
