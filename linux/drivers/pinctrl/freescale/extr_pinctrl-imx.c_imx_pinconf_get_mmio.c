
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct imx_pinctrl_soc_info {int flags; unsigned long mux_mask; TYPE_1__* pins; } ;
struct imx_pinctrl {scalar_t__ base; int dev; struct imx_pin_reg* pin_regs; struct imx_pinctrl_soc_info* info; } ;
struct imx_pin_reg {int conf_reg; } ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 int SHARE_MUX_CONF_REG ;
 int dev_err (int ,char*,int ) ;
 struct imx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static int imx_pinconf_get_mmio(struct pinctrl_dev *pctldev, unsigned pin_id,
    unsigned long *config)
{
 struct imx_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 const struct imx_pinctrl_soc_info *info = ipctl->info;
 const struct imx_pin_reg *pin_reg = &ipctl->pin_regs[pin_id];

 if (pin_reg->conf_reg == -1) {
  dev_err(ipctl->dev, "Pin(%s) does not support config function\n",
   info->pins[pin_id].name);
  return -EINVAL;
 }

 *config = readl(ipctl->base + pin_reg->conf_reg);

 if (info->flags & SHARE_MUX_CONF_REG)
  *config &= ~info->mux_mask;

 return 0;
}
