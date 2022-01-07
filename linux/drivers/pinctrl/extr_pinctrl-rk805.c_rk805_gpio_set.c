
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rk805_pctrl_info {int dev; TYPE_2__* pin_cfg; TYPE_1__* rk808; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_4__ {int val_msk; int reg; } ;
struct TYPE_3__ {int regmap; } ;


 int dev_err (int ,char*,unsigned int,int) ;
 struct rk805_pctrl_info* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void rk805_gpio_set(struct gpio_chip *chip,
      unsigned int offset,
      int value)
{
 struct rk805_pctrl_info *pci = gpiochip_get_data(chip);
 int ret;

 ret = regmap_update_bits(pci->rk808->regmap,
     pci->pin_cfg[offset].reg,
     pci->pin_cfg[offset].val_msk,
     value ? pci->pin_cfg[offset].val_msk : 0);
 if (ret)
  dev_err(pci->dev, "set gpio%d value %d failed\n",
   offset, value);
}
