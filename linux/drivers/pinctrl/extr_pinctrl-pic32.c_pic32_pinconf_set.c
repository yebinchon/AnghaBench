
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct pinctrl_dev {int dummy; } ;
struct pic32_pinctrl {int dev; } ;
struct TYPE_3__ {unsigned int base; } ;
struct pic32_gpio_bank {TYPE_1__ gpio_chip; scalar_t__ reg_base; } ;


 int ANSEL_REG ;
 unsigned int BIT (unsigned int) ;
 int CNPD_REG ;
 int CNPU_REG ;
 int ENOTSUPP ;
 int ODCU_REG ;
 scalar_t__ PIC32_CLR (int ) ;
 scalar_t__ PIC32_SET (int ) ;







 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,unsigned int) ;
 struct pic32_gpio_bank* pctl_to_bank (struct pic32_pinctrl*,unsigned int) ;
 int pic32_gpio_direction_input (TYPE_1__*,unsigned int) ;
 int pic32_gpio_direction_output (TYPE_1__*,unsigned int,unsigned int) ;
 unsigned int pinconf_to_config_argument (unsigned long) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct pic32_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int pic32_pinconf_set(struct pinctrl_dev *pctldev, unsigned pin,
     unsigned long *configs, unsigned num_configs)
{
 struct pic32_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct pic32_gpio_bank *bank = pctl_to_bank(pctl, pin);
 unsigned param;
 u32 arg;
 unsigned int i;
 u32 offset = pin - bank->gpio_chip.base;
 u32 mask = BIT(offset);

 dev_dbg(pctl->dev, "setting pin %d bank %d mask 0x%x\n",
  pin, bank->gpio_chip.base, mask);

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 133:
   dev_dbg(pctl->dev, "   pullup\n");
   writel(mask, bank->reg_base +PIC32_SET(CNPU_REG));
   break;
  case 134:
   dev_dbg(pctl->dev, "   pulldown\n");
   writel(mask, bank->reg_base + PIC32_SET(CNPD_REG));
   break;
  case 129:
   dev_dbg(pctl->dev, "   digital\n");
   writel(mask, bank->reg_base + PIC32_CLR(ANSEL_REG));
   break;
  case 130:
   dev_dbg(pctl->dev, "   analog\n");
   writel(mask, bank->reg_base + PIC32_SET(ANSEL_REG));
   break;
  case 132:
   dev_dbg(pctl->dev, "   opendrain\n");
   writel(mask, bank->reg_base + PIC32_SET(ODCU_REG));
   break;
  case 131:
   pic32_gpio_direction_input(&bank->gpio_chip, offset);
   break;
  case 128:
   pic32_gpio_direction_output(&bank->gpio_chip,
          offset, arg);
   break;
  default:
   dev_err(pctl->dev, "Property %u not supported\n",
    param);
   return -ENOTSUPP;
  }
 }

 return 0;
}
