
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct chv_pinctrl {int dev; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EBUSY ;
 int ENOTSUPP ;





 int chv_config_set_oden (struct chv_pinctrl*,unsigned int,int) ;
 int chv_config_set_pull (struct chv_pinctrl*,unsigned int,int,int ) ;
 scalar_t__ chv_pad_locked (struct chv_pinctrl*,unsigned int) ;
 int dev_dbg (int ,char*,unsigned int,int,int ) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct chv_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int chv_config_set(struct pinctrl_dev *pctldev, unsigned int pin,
     unsigned long *configs, unsigned int nconfigs)
{
 struct chv_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param;
 int i, ret;
 u32 arg;

 if (chv_pad_locked(pctrl, pin))
  return -EBUSY;

 for (i = 0; i < nconfigs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 132:
  case 130:
  case 131:
   ret = chv_config_set_pull(pctrl, pin, param, arg);
   if (ret)
    return ret;
   break;

  case 128:
   ret = chv_config_set_oden(pctrl, pin, 0);
   if (ret)
    return ret;
   break;

  case 129:
   ret = chv_config_set_oden(pctrl, pin, 1);
   if (ret)
    return ret;
   break;

  default:
   return -ENOTSUPP;
  }

  dev_dbg(pctrl->dev, "pin %d set config %d arg %u\n", pin,
   param, arg);
 }

 return 0;
}
