
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct meson_pinctrl {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ENOTSUPP ;






 int meson_pinconf_disable_bias (struct meson_pinctrl*,unsigned int) ;
 int meson_pinconf_enable_bias (struct meson_pinctrl*,unsigned int,int) ;
 int meson_pinconf_set_drive_strength (struct meson_pinctrl*,unsigned int,unsigned int) ;
 int meson_pinconf_set_output (struct meson_pinctrl*,unsigned int,unsigned int) ;
 int meson_pinconf_set_output_drive (struct meson_pinctrl*,unsigned int,unsigned int) ;
 unsigned int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct meson_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int meson_pinconf_set(struct pinctrl_dev *pcdev, unsigned int pin,
        unsigned long *configs, unsigned num_configs)
{
 struct meson_pinctrl *pc = pinctrl_dev_get_drvdata(pcdev);
 enum pin_config_param param;
 unsigned int arg = 0;
 int i, ret;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);

  switch (param) {
  case 130:
  case 128:
  case 129:
   arg = pinconf_to_config_argument(configs[i]);
   break;

  default:
   break;
  }

  switch (param) {
  case 133:
   ret = meson_pinconf_disable_bias(pc, pin);
   break;
  case 131:
   ret = meson_pinconf_enable_bias(pc, pin, 1);
   break;
  case 132:
   ret = meson_pinconf_enable_bias(pc, pin, 0);
   break;
  case 130:
   ret = meson_pinconf_set_drive_strength(pc, pin, arg);
   break;
  case 128:
   ret = meson_pinconf_set_output(pc, pin, arg);
   break;
  case 129:
   ret = meson_pinconf_set_output_drive(pc, pin, arg);
   break;
  default:
   ret = -ENOTSUPP;
  }

  if (ret)
   return ret;
 }

 return 0;
}
