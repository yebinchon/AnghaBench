
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct mrfld_pinctrl {int dummy; } ;


 int ENOTSUPP ;





 int mrfld_buf_available (struct mrfld_pinctrl*,unsigned int) ;
 int mrfld_config_set_pin (struct mrfld_pinctrl*,unsigned int,unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct mrfld_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mrfld_config_set(struct pinctrl_dev *pctldev, unsigned int pin,
       unsigned long *configs, unsigned int nconfigs)
{
 struct mrfld_pinctrl *mp = pinctrl_dev_get_drvdata(pctldev);
 unsigned int i;
 int ret;

 if (!mrfld_buf_available(mp, pin))
  return -ENOTSUPP;

 for (i = 0; i < nconfigs; i++) {
  switch (pinconf_to_config_param(configs[i])) {
  case 132:
  case 130:
  case 131:
  case 129:
  case 128:
   ret = mrfld_config_set_pin(mp, pin, configs[i]);
   if (ret)
    return ret;
   break;

  default:
   return -ENOTSUPP;
  }
 }

 return 0;
}
