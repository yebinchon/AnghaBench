
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct intel_pinctrl {int dummy; } ;


 int ENOTSUPP ;




 int intel_config_set_debounce (struct intel_pinctrl*,unsigned int,int ) ;
 int intel_config_set_pull (struct intel_pinctrl*,unsigned int,unsigned long) ;
 int intel_pad_usable (struct intel_pinctrl*,unsigned int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct intel_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int intel_config_set(struct pinctrl_dev *pctldev, unsigned int pin,
     unsigned long *configs, unsigned int nconfigs)
{
 struct intel_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);
 int i, ret;

 if (!intel_pad_usable(pctrl, pin))
  return -ENOTSUPP;

 for (i = 0; i < nconfigs; i++) {
  switch (pinconf_to_config_param(configs[i])) {
  case 131:
  case 129:
  case 130:
   ret = intel_config_set_pull(pctrl, pin, configs[i]);
   if (ret)
    return ret;
   break;

  case 128:
   ret = intel_config_set_debounce(pctrl, pin,
    pinconf_to_config_argument(configs[i]));
   if (ret)
    return ret;
   break;

  default:
   return -ENOTSUPP;
  }
 }

 return 0;
}
