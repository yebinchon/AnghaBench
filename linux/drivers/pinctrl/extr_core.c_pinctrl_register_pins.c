
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_pin_desc {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int pinctrl_register_one_pin (struct pinctrl_dev*,struct pinctrl_pin_desc const*) ;

__attribute__((used)) static int pinctrl_register_pins(struct pinctrl_dev *pctldev,
     const struct pinctrl_pin_desc *pins,
     unsigned num_descs)
{
 unsigned i;
 int ret = 0;

 for (i = 0; i < num_descs; i++) {
  ret = pinctrl_register_one_pin(pctldev, &pins[i]);
  if (ret)
   return ret;
 }

 return 0;
}
