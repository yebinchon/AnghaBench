
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_setting {int type; } ;





 int pinconf_free_setting (struct pinctrl_setting*) ;
 int pinmux_disable_setting (struct pinctrl_setting*) ;
 int pinmux_free_setting (struct pinctrl_setting*) ;

__attribute__((used)) static void pinctrl_free_setting(bool disable_setting,
     struct pinctrl_setting *setting)
{
 switch (setting->type) {
 case 128:
  if (disable_setting)
   pinmux_disable_setting(setting);
  pinmux_free_setting(setting);
  break;
 case 129:
 case 130:
  pinconf_free_setting(setting);
  break;
 default:
  break;
 }
}
