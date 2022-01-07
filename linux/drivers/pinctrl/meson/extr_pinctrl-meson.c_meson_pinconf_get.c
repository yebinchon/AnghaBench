
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pinctrl_dev {int dummy; } ;
struct meson_pinctrl {int dev; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;
 int ENOTSUPP ;






 int dev_dbg (int ,char*,unsigned int,unsigned long) ;
 int meson_pinconf_get_drive (struct meson_pinctrl*,unsigned int) ;
 int meson_pinconf_get_drive_strength (struct meson_pinctrl*,unsigned int,int*) ;
 int meson_pinconf_get_output (struct meson_pinctrl*,unsigned int) ;
 int meson_pinconf_get_pull (struct meson_pinctrl*,unsigned int) ;
 unsigned long pinconf_to_config_packed (int,int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct meson_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int meson_pinconf_get(struct pinctrl_dev *pcdev, unsigned int pin,
        unsigned long *config)
{
 struct meson_pinctrl *pc = pinctrl_dev_get_drvdata(pcdev);
 enum pin_config_param param = pinconf_to_config_param(*config);
 u16 arg;
 int ret;

 switch (param) {
 case 133:
 case 132:
 case 131:
  if (meson_pinconf_get_pull(pc, pin) == param)
   arg = 1;
  else
   return -EINVAL;
  break;
 case 130:
  ret = meson_pinconf_get_drive_strength(pc, pin, &arg);
  if (ret)
   return ret;
  break;
 case 128:
  ret = meson_pinconf_get_output(pc, pin);
  if (ret <= 0)
   return -EINVAL;
  arg = 1;
  break;
 case 129:
  ret = meson_pinconf_get_output(pc, pin);
  if (ret <= 0)
   return -EINVAL;

  ret = meson_pinconf_get_drive(pc, pin);
  if (ret < 0)
   return -EINVAL;

  arg = ret;
  break;

 default:
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, arg);
 dev_dbg(pc->dev, "pinconf for pin %u is %lu\n", pin, *config);

 return 0;
}
