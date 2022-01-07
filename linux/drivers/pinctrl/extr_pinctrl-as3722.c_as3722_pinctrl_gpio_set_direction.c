
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct as3722_pctrl_info {int dev; TYPE_1__* gpio_control; struct as3722* as3722; } ;
struct as3722 {int dummy; } ;
struct TYPE_2__ {int mode_prop; } ;


 int AS3722_GPIO_MODE_MASK ;
 int AS3722_GPIOn_CONTROL_REG (unsigned int) ;
 int as3722_pinctrl_gpio_get_mode (int ,int) ;
 int as3722_update_bits (struct as3722*,int ,int ,int) ;
 int dev_err (int ,char*,char*,unsigned int) ;
 struct as3722_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int as3722_pinctrl_gpio_set_direction(struct pinctrl_dev *pctldev,
  struct pinctrl_gpio_range *range, unsigned offset, bool input)
{
 struct as3722_pctrl_info *as_pci = pinctrl_dev_get_drvdata(pctldev);
 struct as3722 *as3722 = as_pci->as3722;
 int mode;

 mode = as3722_pinctrl_gpio_get_mode(
   as_pci->gpio_control[offset].mode_prop, input);
 if (mode < 0) {
  dev_err(as_pci->dev, "%s direction for GPIO %d not supported\n",
   (input) ? "Input" : "Output", offset);
  return mode;
 }

 return as3722_update_bits(as3722, AS3722_GPIOn_CONTROL_REG(offset),
    AS3722_GPIO_MODE_MASK, mode);
}
