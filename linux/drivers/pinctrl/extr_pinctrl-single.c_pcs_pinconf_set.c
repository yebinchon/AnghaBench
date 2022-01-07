
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct pinctrl_dev {int dummy; } ;
struct pcs_function {unsigned int nconfs; TYPE_1__* conf; } ;
struct pcs_device {unsigned int width; unsigned int (* read ) (scalar_t__) ;scalar_t__ base; int (* write ) (unsigned int,scalar_t__) ;} ;
struct TYPE_2__ {int param; unsigned int mask; unsigned int enable; unsigned int disable; } ;


 unsigned int BITS_PER_BYTE ;
 int ENOTSUPP ;
 int ffs (unsigned int) ;
 unsigned int pcs_get_function (struct pinctrl_dev*,unsigned int,struct pcs_function**) ;
 int pcs_pinconf_clear_bias (struct pinctrl_dev*,unsigned int) ;
 unsigned int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct pcs_device* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 unsigned int stub1 (scalar_t__) ;
 int stub2 (unsigned int,scalar_t__) ;

__attribute__((used)) static int pcs_pinconf_set(struct pinctrl_dev *pctldev,
    unsigned pin, unsigned long *configs,
    unsigned num_configs)
{
 struct pcs_device *pcs = pinctrl_dev_get_drvdata(pctldev);
 struct pcs_function *func;
 unsigned offset = 0, shift = 0, i, data, ret;
 u32 arg;
 int j;

 ret = pcs_get_function(pctldev, pin, &func);
 if (ret)
  return ret;

 for (j = 0; j < num_configs; j++) {
  for (i = 0; i < func->nconfs; i++) {
   if (pinconf_to_config_param(configs[j])
    != func->conf[i].param)
    continue;

   offset = pin * (pcs->width / BITS_PER_BYTE);
   data = pcs->read(pcs->base + offset);
   arg = pinconf_to_config_argument(configs[j]);
   switch (func->conf[i].param) {

   case 131:
   case 132:
   case 128:
   case 129:
    shift = ffs(func->conf[i].mask) - 1;
    data &= ~func->conf[i].mask;
    data |= (arg << shift) & func->conf[i].mask;
    break;

   case 135:
    pcs_pinconf_clear_bias(pctldev, pin);
    break;
   case 134:
   case 133:
    if (arg)
     pcs_pinconf_clear_bias(pctldev, pin);

   case 130:
    data &= ~func->conf[i].mask;
    if (arg)
     data |= func->conf[i].enable;
    else
     data |= func->conf[i].disable;
    break;
   default:
    return -ENOTSUPP;
   }
   pcs->write(data, pcs->base + offset);

   break;
  }
  if (i >= func->nconfs)
   return -ENOTSUPP;
 }

 return 0;
}
