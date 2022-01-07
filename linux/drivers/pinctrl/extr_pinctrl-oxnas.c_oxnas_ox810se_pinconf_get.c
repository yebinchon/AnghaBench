
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct oxnas_pinctrl {int regmap; } ;
struct TYPE_2__ {scalar_t__ base; } ;
struct oxnas_gpio_bank {int id; TYPE_1__ gpio_chip; } ;


 int BIT (scalar_t__) ;
 int ENOTSUPP ;
 int PINMUX_810_PULLUP_CTRL0 ;
 int PINMUX_810_PULLUP_CTRL1 ;

 struct oxnas_gpio_bank* pctl_to_bank (struct oxnas_pinctrl*,unsigned int) ;
 unsigned long pinconf_to_config_packed (unsigned int,int) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct oxnas_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int oxnas_ox810se_pinconf_get(struct pinctrl_dev *pctldev,
         unsigned int pin, unsigned long *config)
{
 struct oxnas_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct oxnas_gpio_bank *bank = pctl_to_bank(pctl, pin);
 unsigned int param = pinconf_to_config_param(*config);
 u32 mask = BIT(pin - bank->gpio_chip.base);
 int ret;
 u32 arg;

 switch (param) {
 case 128:
  ret = regmap_read(pctl->regmap,
      (bank->id ?
     PINMUX_810_PULLUP_CTRL1 :
     PINMUX_810_PULLUP_CTRL0),
      &arg);
  if (ret)
   return ret;

  arg = !!(arg & mask);
  break;
 default:
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, arg);

 return 0;
}
