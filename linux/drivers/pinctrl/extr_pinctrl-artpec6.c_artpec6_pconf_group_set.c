
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dev; } ;
struct TYPE_2__ {unsigned int num_pins; int * pins; } ;


 int artpec6_get_group_name (struct pinctrl_dev*,unsigned int) ;
 int artpec6_pconf_set (struct pinctrl_dev*,int ,unsigned long*,unsigned int) ;
 TYPE_1__* artpec6_pin_groups ;
 int dev_dbg (int ,char*,int ) ;

__attribute__((used)) static int artpec6_pconf_group_set(struct pinctrl_dev *pctldev,
       unsigned int group, unsigned long *configs,
       unsigned int num_configs)
{
 unsigned int num_pins, current_pin;
 int ret;

 dev_dbg(pctldev->dev, "setting group %s configuration\n",
  artpec6_get_group_name(pctldev, group));

 num_pins = artpec6_pin_groups[group].num_pins;

 for (current_pin = 0; current_pin < num_pins; current_pin++) {
  ret = artpec6_pconf_set(pctldev,
    artpec6_pin_groups[group].pins[current_pin],
    configs, num_configs);

  if (ret < 0)
   return ret;
 }

 return 0;
}
