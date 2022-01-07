
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct pcs_function {unsigned int nconfs; TYPE_1__* conf; } ;
struct pcs_device {unsigned int width; unsigned int (* read ) (scalar_t__) ;scalar_t__ base; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int param; unsigned int mask; unsigned int enable; unsigned int disable; } ;


 unsigned int BITS_PER_BYTE ;
 int ENOTSUPP ;
 int PIN_CONFIG_BIAS_DISABLE ;







 unsigned int pcs_get_function (struct pinctrl_dev*,unsigned int,struct pcs_function**) ;
 scalar_t__ pcs_pinconf_bias_disable (struct pinctrl_dev*,unsigned int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct pcs_device* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 unsigned int stub1 (scalar_t__) ;

__attribute__((used)) static int pcs_pinconf_get(struct pinctrl_dev *pctldev,
    unsigned pin, unsigned long *config)
{
 struct pcs_device *pcs = pinctrl_dev_get_drvdata(pctldev);
 struct pcs_function *func;
 enum pin_config_param param;
 unsigned offset = 0, data = 0, i, j, ret;

 ret = pcs_get_function(pctldev, pin, &func);
 if (ret)
  return ret;

 for (i = 0; i < func->nconfs; i++) {
  param = pinconf_to_config_param(*config);
  if (param == PIN_CONFIG_BIAS_DISABLE) {
   if (pcs_pinconf_bias_disable(pctldev, pin)) {
    *config = 0;
    return 0;
   } else {
    return -ENOTSUPP;
   }
  } else if (param != func->conf[i].param) {
   continue;
  }

  offset = pin * (pcs->width / BITS_PER_BYTE);
  data = pcs->read(pcs->base + offset) & func->conf[i].mask;
  switch (func->conf[i].param) {

  case 134:
  case 133:
  case 130:
   if ((data != func->conf[i].enable) ||
       (data == func->conf[i].disable))
    return -ENOTSUPP;
   *config = 0;
   break;

  case 131:
   for (j = 0; j < func->nconfs; j++) {
    switch (func->conf[j].param) {
    case 130:
     if (data != func->conf[j].enable)
      return -ENOTSUPP;
     break;
    default:
     break;
    }
   }
   *config = data;
   break;
  case 132:
  case 128:
  case 129:
  default:
   *config = data;
   break;
  }
  return 0;
 }
 return -ENOTSUPP;
}
