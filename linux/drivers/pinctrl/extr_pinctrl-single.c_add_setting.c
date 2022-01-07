
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 unsigned long pinconf_to_config_packed (int,unsigned int) ;

__attribute__((used)) static void add_setting(unsigned long **setting, enum pin_config_param param,
   unsigned arg)
{
 **setting = pinconf_to_config_packed(param, arg);
 (*setting)++;
}
