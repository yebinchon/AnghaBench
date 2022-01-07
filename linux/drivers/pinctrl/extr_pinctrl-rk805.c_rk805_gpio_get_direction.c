
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rk805_pctrl_info {TYPE_2__* pin_cfg; int dev; TYPE_1__* rk808; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_4__ {unsigned int dir_msk; int reg; } ;
struct TYPE_3__ {int regmap; } ;


 int dev_err (int ,char*,unsigned int) ;
 struct rk805_pctrl_info* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int rk805_gpio_get_direction(struct gpio_chip *chip, unsigned int offset)
{
 struct rk805_pctrl_info *pci = gpiochip_get_data(chip);
 unsigned int val;
 int ret;


 if (!pci->pin_cfg[offset].dir_msk)
  return 0;

 ret = regmap_read(pci->rk808->regmap,
     pci->pin_cfg[offset].reg,
     &val);
 if (ret) {
  dev_err(pci->dev, "get gpio%d direction failed\n", offset);
  return ret;
 }

 return !(val & pci->pin_cfg[offset].dir_msk);
}
