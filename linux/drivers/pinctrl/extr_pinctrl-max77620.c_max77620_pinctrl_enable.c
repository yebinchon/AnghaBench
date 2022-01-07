
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pinctrl_dev {int dummy; } ;
struct max77620_pctrl_info {int dev; int rmap; TYPE_1__* pin_groups; } ;
struct TYPE_2__ {unsigned int alt_option; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 unsigned int MAX77620_PINMUX_GPIO ;
 int MAX77620_REG_AME_GPIO ;
 int dev_err (int ,char*,int,...) ;
 struct max77620_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int max77620_pinctrl_enable(struct pinctrl_dev *pctldev,
       unsigned int function, unsigned int group)
{
 struct max77620_pctrl_info *mpci = pinctrl_dev_get_drvdata(pctldev);
 u8 val;
 int ret;

 if (function == MAX77620_PINMUX_GPIO) {
  val = 0;
 } else if (function == mpci->pin_groups[group].alt_option) {
  val = 1 << group;
 } else {
  dev_err(mpci->dev, "GPIO %u doesn't have function %u\n",
   group, function);
  return -EINVAL;
 }
 ret = regmap_update_bits(mpci->rmap, MAX77620_REG_AME_GPIO,
     BIT(group), val);
 if (ret < 0)
  dev_err(mpci->dev, "REG AME GPIO update failed: %d\n", ret);

 return ret;
}
