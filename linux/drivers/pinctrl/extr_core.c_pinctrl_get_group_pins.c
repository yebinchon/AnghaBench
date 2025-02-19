
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_ops {int (* get_group_pins ) (struct pinctrl_dev*,int,unsigned int const**,unsigned int*) ;} ;
struct pinctrl_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {struct pinctrl_ops* pctlops; } ;


 int EINVAL ;
 int pinctrl_get_group_selector (struct pinctrl_dev*,char const*) ;
 int stub1 (struct pinctrl_dev*,int,unsigned int const**,unsigned int*) ;

int pinctrl_get_group_pins(struct pinctrl_dev *pctldev, const char *pin_group,
    const unsigned **pins, unsigned *num_pins)
{
 const struct pinctrl_ops *pctlops = pctldev->desc->pctlops;
 int gs;

 if (!pctlops->get_group_pins)
  return -EINVAL;

 gs = pinctrl_get_group_selector(pctldev, pin_group);
 if (gs < 0)
  return gs;

 return pctlops->get_group_pins(pctldev, gs, pins, num_pins);
}
