
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pm8xxx_pin_data {int bias; int disable; unsigned int pull_up_strength; int mode; int output_value; unsigned int power_source; unsigned int output_strength; int open_drain; int function; int inverted; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct pm8xxx_gpio {int dev; TYPE_2__ desc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_3__ {struct pm8xxx_pin_data* drv_data; } ;


 int BIT (int) ;
 int EINVAL ;
 int PM8XXX_GPIO_BIAS_NP ;
 int PM8XXX_GPIO_BIAS_PD ;
 unsigned int PM8XXX_GPIO_BIAS_PU_1P5_30 ;
 int PM8XXX_GPIO_MODE_ENABLED ;
 int PM8XXX_GPIO_MODE_INPUT ;
 int PM8XXX_GPIO_MODE_OUTPUT ;


 unsigned int PMIC_GPIO_STRENGTH_LOW ;
 int dev_err (int ,char*,...) ;
 unsigned int pinconf_to_config_argument (unsigned long) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct pm8xxx_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int pm8xxx_write_bank (struct pm8xxx_gpio*,struct pm8xxx_pin_data*,int,int) ;

__attribute__((used)) static int pm8xxx_pin_config_set(struct pinctrl_dev *pctldev,
     unsigned int offset,
     unsigned long *configs,
     unsigned num_configs)
{
 struct pm8xxx_gpio *pctrl = pinctrl_dev_get_drvdata(pctldev);
 struct pm8xxx_pin_data *pin = pctrl->desc.pins[offset].drv_data;
 unsigned param;
 unsigned arg;
 unsigned i;
 u8 banks = 0;
 u8 val;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 138:
   pin->bias = PM8XXX_GPIO_BIAS_NP;
   banks |= BIT(2);
   pin->disable = 0;
   banks |= BIT(3);
   break;
  case 136:
   pin->bias = PM8XXX_GPIO_BIAS_PD;
   banks |= BIT(2);
   pin->disable = 0;
   banks |= BIT(3);
   break;
  case 128:
   if (arg > PM8XXX_GPIO_BIAS_PU_1P5_30) {
    dev_err(pctrl->dev, "invalid pull-up strength\n");
    return -EINVAL;
   }
   pin->pull_up_strength = arg;

  case 135:
   pin->bias = pin->pull_up_strength;
   banks |= BIT(2);
   pin->disable = 0;
   banks |= BIT(3);
   break;
  case 137:
   pin->disable = 1;
   banks |= BIT(3);
   break;
  case 132:
   pin->mode = PM8XXX_GPIO_MODE_INPUT;
   banks |= BIT(0) | BIT(1);
   break;
  case 131:
   pin->mode = PM8XXX_GPIO_MODE_OUTPUT;
   pin->output_value = !!arg;
   banks |= BIT(0) | BIT(1);
   break;
  case 130:
   pin->power_source = arg;
   banks |= BIT(0);
   break;
  case 129:
   if (arg > PMIC_GPIO_STRENGTH_LOW) {
    dev_err(pctrl->dev, "invalid drive strength\n");
    return -EINVAL;
   }
   pin->output_strength = arg;
   banks |= BIT(3);
   break;
  case 133:
   pin->open_drain = 0;
   banks |= BIT(1);
   break;
  case 134:
   pin->open_drain = 1;
   banks |= BIT(1);
   break;
  default:
   dev_err(pctrl->dev,
    "unsupported config parameter: %x\n",
    param);
   return -EINVAL;
  }
 }

 if (banks & BIT(0)) {
  val = pin->power_source << 1;
  val |= PM8XXX_GPIO_MODE_ENABLED;
  pm8xxx_write_bank(pctrl, pin, 0, val);
 }

 if (banks & BIT(1)) {
  val = pin->mode << 2;
  val |= pin->open_drain << 1;
  val |= pin->output_value;
  pm8xxx_write_bank(pctrl, pin, 1, val);
 }

 if (banks & BIT(2)) {
  val = pin->bias << 1;
  pm8xxx_write_bank(pctrl, pin, 2, val);
 }

 if (banks & BIT(3)) {
  val = pin->output_strength << 2;
  val |= pin->disable;
  pm8xxx_write_bank(pctrl, pin, 3, val);
 }

 if (banks & BIT(4)) {
  val = pin->function << 1;
  pm8xxx_write_bank(pctrl, pin, 4, val);
 }

 if (banks & BIT(5)) {
  val = 0;
  if (!pin->inverted)
   val |= BIT(3);
  pm8xxx_write_bank(pctrl, pin, 5, val);
 }

 return 0;
}
