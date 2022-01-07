
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rk805_pctrl_info {int dev; TYPE_2__* pin_cfg; TYPE_1__* rk808; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {int fun_msk; int reg; } ;
struct TYPE_3__ {int regmap; } ;


 int EINVAL ;
 int RK805_PINMUX_GPIO ;
 int dev_err (int ,char*,int) ;
 struct rk805_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int _rk805_pinctrl_set_mux(struct pinctrl_dev *pctldev,
      unsigned int offset,
      int mux)
{
 struct rk805_pctrl_info *pci = pinctrl_dev_get_drvdata(pctldev);
 int ret;

 if (!pci->pin_cfg[offset].fun_msk)
  return 0;

 if (mux == RK805_PINMUX_GPIO) {
  ret = regmap_update_bits(pci->rk808->regmap,
      pci->pin_cfg[offset].reg,
      pci->pin_cfg[offset].fun_msk,
      pci->pin_cfg[offset].fun_msk);
  if (ret) {
   dev_err(pci->dev, "set gpio%d GPIO failed\n", offset);
   return ret;
  }
 } else {
  dev_err(pci->dev, "Couldn't find function mux %d\n", mux);
  return -EINVAL;
 }

 return 0;
}
