
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct pic32_pinctrl {int dev; } ;
struct TYPE_2__ {unsigned int base; } ;
struct pic32_gpio_bank {scalar_t__ reg_base; TYPE_1__ gpio_chip; } ;


 scalar_t__ ANSEL_REG ;
 int BIT (unsigned int) ;
 scalar_t__ CNPD_REG ;
 scalar_t__ CNPU_REG ;
 int ENOTSUPP ;
 scalar_t__ ODCU_REG ;







 scalar_t__ TRIS_REG ;
 int dev_err (int ,char*,unsigned int) ;
 struct pic32_gpio_bank* pctl_to_bank (struct pic32_pinctrl*,unsigned int) ;
 unsigned long pinconf_to_config_packed (unsigned int,int) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct pic32_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int pic32_pinconf_get(struct pinctrl_dev *pctldev, unsigned pin,
     unsigned long *config)
{
 struct pic32_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct pic32_gpio_bank *bank = pctl_to_bank(pctl, pin);
 unsigned param = pinconf_to_config_param(*config);
 u32 mask = BIT(pin - bank->gpio_chip.base);
 u32 arg;

 switch (param) {
 case 133:
  arg = !!(readl(bank->reg_base + CNPU_REG) & mask);
  break;
 case 134:
  arg = !!(readl(bank->reg_base + CNPD_REG) & mask);
  break;
 case 129:
  arg = !(readl(bank->reg_base + ANSEL_REG) & mask);
  break;
 case 130:
  arg = !!(readl(bank->reg_base + ANSEL_REG) & mask);
  break;
 case 132:
  arg = !!(readl(bank->reg_base + ODCU_REG) & mask);
  break;
 case 131:
  arg = !!(readl(bank->reg_base + TRIS_REG) & mask);
  break;
 case 128:
  arg = !(readl(bank->reg_base + TRIS_REG) & mask);
  break;
 default:
  dev_err(pctl->dev, "Property %u not supported\n", param);
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, arg);

 return 0;
}
