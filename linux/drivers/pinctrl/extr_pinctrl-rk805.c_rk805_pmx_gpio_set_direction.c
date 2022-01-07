
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rk805_pctrl_info {int dev; TYPE_2__* pin_cfg; TYPE_1__* rk808; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {int dir_msk; int reg; } ;
struct TYPE_3__ {int regmap; } ;


 int RK805_PINMUX_GPIO ;
 int _rk805_pinctrl_set_mux (struct pinctrl_dev*,unsigned int,int ) ;
 int dev_err (int ,char*,unsigned int) ;
 struct rk805_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int rk805_pmx_gpio_set_direction(struct pinctrl_dev *pctldev,
     struct pinctrl_gpio_range *range,
     unsigned int offset, bool input)
{
 struct rk805_pctrl_info *pci = pinctrl_dev_get_drvdata(pctldev);
 int ret;


 ret = _rk805_pinctrl_set_mux(pctldev, offset, RK805_PINMUX_GPIO);
 if (ret) {
  dev_err(pci->dev, "set gpio%d mux failed\n", offset);
  return ret;
 }


 if (!pci->pin_cfg[offset].dir_msk)
  return 0;

 ret = regmap_update_bits(pci->rk808->regmap,
     pci->pin_cfg[offset].reg,
     pci->pin_cfg[offset].dir_msk,
     input ? 0 : pci->pin_cfg[offset].dir_msk);
 if (ret) {
  dev_err(pci->dev, "set gpio%d direction failed\n", offset);
  return ret;
 }

 return ret;
}
