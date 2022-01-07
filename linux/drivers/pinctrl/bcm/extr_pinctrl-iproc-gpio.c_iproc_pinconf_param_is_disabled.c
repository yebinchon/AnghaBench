
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_gpio {unsigned int nr_pinconf_disable; int* pinconf_disable; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;



__attribute__((used)) static bool iproc_pinconf_param_is_disabled(struct iproc_gpio *chip,
         enum pin_config_param param)
{
 unsigned int i;

 if (!chip->nr_pinconf_disable)
  return 0;

 for (i = 0; i < chip->nr_pinconf_disable; i++)
  if (chip->pinconf_disable[i] == param)
   return 1;

 return 0;
}
