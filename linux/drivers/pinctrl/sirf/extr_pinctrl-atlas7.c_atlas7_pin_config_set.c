
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int ENOTSUPP ;
 int HIGH_HYSTERESIS ;
 int HIGH_Z ;





 int PULL_DOWN ;
 int PULL_UP ;
 int altas7_pinctrl_set_drive_strength_sel (struct pinctrl_dev*,unsigned int,int ) ;
 int altas7_pinctrl_set_pull_sel (struct pinctrl_dev*,unsigned int,int ) ;
 TYPE_1__* atlas7_ioc_pads ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 int pr_debug (char*,unsigned int,int ,int,int ) ;

__attribute__((used)) static int atlas7_pin_config_set(struct pinctrl_dev *pctldev,
    unsigned pin, unsigned long *configs,
    unsigned num_configs)
{
 u16 param;
 u32 arg;
 int idx, err;

 for (idx = 0; idx < num_configs; idx++) {
  param = pinconf_to_config_param(configs[idx]);
  arg = pinconf_to_config_argument(configs[idx]);

  pr_debug("PMX CFG###### ATLAS7 PIN#%d [%s] CONFIG PARAM:%d ARG:%d >>>>>\n",
   pin, atlas7_ioc_pads[pin].name, param, arg);
  switch (param) {
  case 130:
   err = altas7_pinctrl_set_pull_sel(pctldev,
       pin, PULL_UP);
   if (err)
    return err;
   break;

  case 131:
   err = altas7_pinctrl_set_pull_sel(pctldev,
       pin, PULL_DOWN);
   if (err)
    return err;
   break;

  case 128:
   err = altas7_pinctrl_set_pull_sel(pctldev,
       pin, HIGH_HYSTERESIS);
   if (err)
    return err;
   break;
  case 132:
   err = altas7_pinctrl_set_pull_sel(pctldev,
       pin, HIGH_Z);
   if (err)
    return err;
   break;

  case 129:
   err = altas7_pinctrl_set_drive_strength_sel(pctldev,
       pin, arg);
   if (err)
    return err;
   break;
  default:
   return -ENOTSUPP;
  }
  pr_debug("PMX CFG###### ATLAS7 PIN#%d [%s] CONFIG PARAM:%d ARG:%d <<<<\n",
   pin, atlas7_ioc_pads[pin].name, param, arg);
 }

 return 0;
}
