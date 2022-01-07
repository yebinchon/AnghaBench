
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PIN_CONFIG_SLEEP_HARDWARE_STATE ;
 unsigned int pinconf_to_config_param (unsigned long) ;

__attribute__((used)) static bool sprd_pinctrl_check_sleep_config(unsigned long *configs,
         unsigned int num_configs)
{
 unsigned int param;
 int i;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  if (param == PIN_CONFIG_SLEEP_HARDWARE_STATE)
   return 1;
 }

 return 0;
}
