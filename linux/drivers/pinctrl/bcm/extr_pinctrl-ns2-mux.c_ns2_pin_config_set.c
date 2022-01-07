
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_dev {int dev; TYPE_2__* desc; } ;
struct TYPE_6__ {int base; } ;
struct ns2_pin {TYPE_3__ pin_conf; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_5__ {TYPE_1__* pins; } ;
struct TYPE_4__ {struct ns2_pin* drv_data; } ;


 int ENOTSUPP ;






 int dev_err (int ,char*) ;
 int ns2_pin_set_enable (struct pinctrl_dev*,unsigned int,int ) ;
 int ns2_pin_set_pull (struct pinctrl_dev*,unsigned int,int,int) ;
 int ns2_pin_set_slew (struct pinctrl_dev*,unsigned int,int ) ;
 int ns2_pin_set_strength (struct pinctrl_dev*,unsigned int,int ) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;

__attribute__((used)) static int ns2_pin_config_set(struct pinctrl_dev *pctrldev, unsigned int pin,
         unsigned long *configs, unsigned int num_configs)
{
 struct ns2_pin *pin_data = pctrldev->desc->pins[pin].drv_data;
 enum pin_config_param param;
 unsigned int i;
 u32 arg;
 int ret = -ENOTSUPP;

 if (pin_data->pin_conf.base == -1)
  return -ENOTSUPP;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 133:
   ret = ns2_pin_set_pull(pctrldev, pin, 0, 0);
   if (ret < 0)
    goto out;
   break;

  case 131:
   ret = ns2_pin_set_pull(pctrldev, pin, 1, 0);
   if (ret < 0)
    goto out;
   break;

  case 132:
   ret = ns2_pin_set_pull(pctrldev, pin, 0, 1);
   if (ret < 0)
    goto out;
   break;

  case 130:
   ret = ns2_pin_set_strength(pctrldev, pin, arg);
   if (ret < 0)
    goto out;
   break;

  case 128:
   ret = ns2_pin_set_slew(pctrldev, pin, arg);
   if (ret < 0)
    goto out;
   break;

  case 129:
   ret = ns2_pin_set_enable(pctrldev, pin, arg);
   if (ret < 0)
    goto out;
   break;

  default:
   dev_err(pctrldev->dev, "invalid configuration\n");
   return -ENOTSUPP;
  }
 }
out:
 return ret;
}
