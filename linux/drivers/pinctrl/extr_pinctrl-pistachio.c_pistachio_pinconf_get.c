
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pistachio_pinctrl {int dev; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ENOTSUPP ;




 int PADS_DRIVE_STRENGTH_MASK ;
 int PADS_DRIVE_STRENGTH_REG (unsigned int) ;
 int PADS_DRIVE_STRENGTH_SHIFT (unsigned int) ;
 int PADS_PU_PD_BUS ;
 int PADS_PU_PD_DOWN ;
 int PADS_PU_PD_HIGHZ ;
 int PADS_PU_PD_MASK ;
 int PADS_PU_PD_REG (unsigned int) ;
 int PADS_PU_PD_SHIFT (unsigned int) ;
 int PADS_PU_PD_UP ;
 int PADS_SCHMITT_EN_BIT (unsigned int) ;
 int PADS_SCHMITT_EN_REG (unsigned int) ;
 int PADS_SLEW_RATE_BIT (unsigned int) ;
 int PADS_SLEW_RATE_REG (unsigned int) ;







 int dev_dbg (int ,char*,int) ;
 int pctl_readl (struct pistachio_pinctrl*,int ) ;
 unsigned long pinconf_to_config_packed (int,int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct pistachio_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int pistachio_pinconf_get(struct pinctrl_dev *pctldev, unsigned pin,
     unsigned long *config)
{
 struct pistachio_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param = pinconf_to_config_param(*config);
 u32 val, arg;

 switch (param) {
 case 129:
  val = pctl_readl(pctl, PADS_SCHMITT_EN_REG(pin));
  arg = !!(val & PADS_SCHMITT_EN_BIT(pin));
  break;
 case 133:
  val = pctl_readl(pctl, PADS_PU_PD_REG(pin)) >>
   PADS_PU_PD_SHIFT(pin);
  arg = (val & PADS_PU_PD_MASK) == PADS_PU_PD_HIGHZ;
  break;
 case 131:
  val = pctl_readl(pctl, PADS_PU_PD_REG(pin)) >>
   PADS_PU_PD_SHIFT(pin);
  arg = (val & PADS_PU_PD_MASK) == PADS_PU_PD_UP;
  break;
 case 132:
  val = pctl_readl(pctl, PADS_PU_PD_REG(pin)) >>
   PADS_PU_PD_SHIFT(pin);
  arg = (val & PADS_PU_PD_MASK) == PADS_PU_PD_DOWN;
  break;
 case 134:
  val = pctl_readl(pctl, PADS_PU_PD_REG(pin)) >>
   PADS_PU_PD_SHIFT(pin);
  arg = (val & PADS_PU_PD_MASK) == PADS_PU_PD_BUS;
  break;
 case 128:
  val = pctl_readl(pctl, PADS_SLEW_RATE_REG(pin));
  arg = !!(val & PADS_SLEW_RATE_BIT(pin));
  break;
 case 130:
  val = pctl_readl(pctl, PADS_DRIVE_STRENGTH_REG(pin)) >>
   PADS_DRIVE_STRENGTH_SHIFT(pin);
  switch (val & PADS_DRIVE_STRENGTH_MASK) {
  case 137:
   arg = 2;
   break;
  case 136:
   arg = 4;
   break;
  case 135:
   arg = 8;
   break;
  case 138:
  default:
   arg = 12;
   break;
  }
  break;
 default:
  dev_dbg(pctl->dev, "Property %u not supported\n", param);
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, arg);

 return 0;
}
