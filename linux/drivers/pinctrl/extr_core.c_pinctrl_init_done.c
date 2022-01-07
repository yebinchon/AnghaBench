
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct dev_pin_info* pins; } ;
struct dev_pin_info {scalar_t__ init_state; scalar_t__ default_state; TYPE_1__* p; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ IS_ERR (scalar_t__) ;
 int dev_err (struct device*,char*) ;
 int pinctrl_select_state (TYPE_1__*,scalar_t__) ;

int pinctrl_init_done(struct device *dev)
{
 struct dev_pin_info *pins = dev->pins;
 int ret;

 if (!pins)
  return 0;

 if (IS_ERR(pins->init_state))
  return 0;

 if (pins->p->state != pins->init_state)
  return 0;

 if (IS_ERR(pins->default_state))
  return 0;

 ret = pinctrl_select_state(pins->p, pins->default_state);
 if (ret)
  dev_err(dev, "failed to activate default pinctrl state\n");

 return ret;
}
