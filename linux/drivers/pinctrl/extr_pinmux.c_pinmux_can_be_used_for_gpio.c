
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinmux_ops {scalar_t__ strict; } ;
struct pinctrl_dev {TYPE_1__* desc; } ;
struct pin_desc {int gpio_owner; scalar_t__ mux_usecount; } ;
struct TYPE_2__ {struct pinmux_ops* pmxops; } ;


 struct pin_desc* pin_desc_get (struct pinctrl_dev*,unsigned int) ;

bool pinmux_can_be_used_for_gpio(struct pinctrl_dev *pctldev, unsigned pin)
{
 struct pin_desc *desc = pin_desc_get(pctldev, pin);
 const struct pinmux_ops *ops = pctldev->desc->pmxops;


 if (!desc)
  return 1;

 if (ops->strict && desc->mux_usecount)
  return 0;

 return !(ops->strict && !!desc->gpio_owner);
}
