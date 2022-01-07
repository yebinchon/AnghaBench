
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pinctrl_dev {int dummy; } ;
struct oxnas_pinctrl {int dev; int regmap; } ;
struct TYPE_2__ {scalar_t__ base; } ;
struct oxnas_gpio_bank {TYPE_1__ gpio_chip; scalar_t__ id; } ;


 scalar_t__ BIT (scalar_t__) ;
 int ENOTSUPP ;
 unsigned int PINMUX_820_BANK_OFFSET ;
 int PINMUX_820_PULLUP_CTRL ;

 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,unsigned int) ;
 struct oxnas_gpio_bank* pctl_to_bank (struct oxnas_pinctrl*,unsigned int) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct oxnas_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_write_bits (int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int oxnas_ox820_pinconf_set(struct pinctrl_dev *pctldev,
       unsigned int pin, unsigned long *configs,
       unsigned int num_configs)
{
 struct oxnas_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct oxnas_gpio_bank *bank = pctl_to_bank(pctl, pin);
 unsigned int bank_offset = (bank->id ? PINMUX_820_BANK_OFFSET : 0);
 unsigned int param;
 unsigned int i;
 u32 offset = pin - bank->gpio_chip.base;
 u32 mask = BIT(offset);

 dev_dbg(pctl->dev, "setting pin %d bank %d mask 0x%x\n",
  pin, bank->gpio_chip.base, mask);

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);

  switch (param) {
  case 128:
   dev_dbg(pctl->dev, "   pullup\n");
   regmap_write_bits(pctl->regmap,
       bank_offset + PINMUX_820_PULLUP_CTRL,
       mask, mask);
   break;
  default:
   dev_err(pctl->dev, "Property %u not supported\n",
    param);
   return -ENOTSUPP;
  }
 }

 return 0;
}
