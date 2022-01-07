
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct ingenic_pinctrl {int dev; TYPE_1__* info; } ;
struct TYPE_2__ {int* pull_ups; int* pull_downs; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 int ENOTSUPP ;
 unsigned int PINS_PER_GPIO_CHIP ;



 int dev_dbg (int ,char*,char,unsigned int) ;
 int ingenic_set_bias (struct ingenic_pinctrl*,unsigned int,int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct ingenic_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int unreachable () ;

__attribute__((used)) static int ingenic_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
  unsigned long *configs, unsigned int num_configs)
{
 struct ingenic_pinctrl *jzpc = pinctrl_dev_get_drvdata(pctldev);
 unsigned int idx = pin % PINS_PER_GPIO_CHIP;
 unsigned int offt = pin / PINS_PER_GPIO_CHIP;
 unsigned int cfg;

 for (cfg = 0; cfg < num_configs; cfg++) {
  switch (pinconf_to_config_param(configs[cfg])) {
  case 130:
  case 128:
  case 129:
   continue;
  default:
   return -ENOTSUPP;
  }
 }

 for (cfg = 0; cfg < num_configs; cfg++) {
  switch (pinconf_to_config_param(configs[cfg])) {
  case 130:
   dev_dbg(jzpc->dev, "disable pull-over for pin P%c%u\n",
     'A' + offt, idx);
   ingenic_set_bias(jzpc, pin, 0);
   break;

  case 128:
   if (!(jzpc->info->pull_ups[offt] & BIT(idx)))
    return -EINVAL;
   dev_dbg(jzpc->dev, "set pull-up for pin P%c%u\n",
     'A' + offt, idx);
   ingenic_set_bias(jzpc, pin, 1);
   break;

  case 129:
   if (!(jzpc->info->pull_downs[offt] & BIT(idx)))
    return -EINVAL;
   dev_dbg(jzpc->dev, "set pull-down for pin P%c%u\n",
     'A' + offt, idx);
   ingenic_set_bias(jzpc, pin, 1);
   break;

  default:
   unreachable();
  }
 }

 return 0;
}
