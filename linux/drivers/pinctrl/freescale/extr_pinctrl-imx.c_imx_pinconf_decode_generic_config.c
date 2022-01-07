
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_pinctrl_soc_info {unsigned int num_decodes; int (* fixup ) (unsigned long*,unsigned int,int*) ;struct imx_cfg_params_decode* decodes; } ;
struct imx_pinctrl {struct imx_pinctrl_soc_info* info; } ;
struct imx_cfg_params_decode {int param; int shift; int mask; scalar_t__ invert; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int WARN_ON (int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 int stub1 (unsigned long*,unsigned int,int*) ;

__attribute__((used)) static u32 imx_pinconf_decode_generic_config(struct imx_pinctrl *ipctl,
           unsigned long *configs,
           unsigned int num_configs)
{
 const struct imx_pinctrl_soc_info *info = ipctl->info;
 const struct imx_cfg_params_decode *decode;
 enum pin_config_param param;
 u32 raw_config = 0;
 u32 param_val;
 int i, j;

 WARN_ON(num_configs > info->num_decodes);

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  param_val = pinconf_to_config_argument(configs[i]);
  decode = info->decodes;
  for (j = 0; j < info->num_decodes; j++) {
   if (param == decode->param) {
    if (decode->invert)
     param_val = !param_val;
    raw_config |= (param_val << decode->shift)
           & decode->mask;
    break;
   }
   decode++;
  }
 }

 if (info->fixup)
  info->fixup(configs, num_configs, &raw_config);

 return raw_config;
}
