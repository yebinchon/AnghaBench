
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_pinctrl_data {unsigned int nconfigs; struct aspeed_pin_config const* configs; } ;
struct aspeed_pin_config {int param; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 scalar_t__ pin_in_config_range (unsigned int,struct aspeed_pin_config const*) ;

__attribute__((used)) static inline const struct aspeed_pin_config *find_pinconf_config(
  const struct aspeed_pinctrl_data *pdata,
  unsigned int offset,
  enum pin_config_param param)
{
 unsigned int i;

 for (i = 0; i < pdata->nconfigs; i++) {
  if (param == pdata->configs[i].param &&
    pin_in_config_range(offset, &pdata->configs[i]))
   return &pdata->configs[i];
 }

 return ((void*)0);
}
