
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct pinctrl_dev {int dummy; } ;
struct imx_pinctrl_soc_info {int flags; unsigned long mux_mask; TYPE_1__* pins; } ;
struct imx_pinctrl {int base; int dev; struct imx_pin_reg* pin_regs; struct imx_pinctrl_soc_info* info; } ;
struct imx_pin_reg {int conf_reg; } ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 int SHARE_MUX_CONF_REG ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_err (int ,char*,int ) ;
 struct imx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 unsigned long readl (int) ;
 int writel (unsigned long,int) ;

__attribute__((used)) static int imx_pinconf_set_mmio(struct pinctrl_dev *pctldev,
    unsigned pin_id, unsigned long *configs,
    unsigned num_configs)
{
 struct imx_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 const struct imx_pinctrl_soc_info *info = ipctl->info;
 const struct imx_pin_reg *pin_reg = &ipctl->pin_regs[pin_id];
 int i;

 if (pin_reg->conf_reg == -1) {
  dev_err(ipctl->dev, "Pin(%s) does not support config function\n",
   info->pins[pin_id].name);
  return -EINVAL;
 }

 dev_dbg(ipctl->dev, "pinconf set pin %s\n",
  info->pins[pin_id].name);

 for (i = 0; i < num_configs; i++) {
  if (info->flags & SHARE_MUX_CONF_REG) {
   u32 reg;
   reg = readl(ipctl->base + pin_reg->conf_reg);
   reg &= info->mux_mask;
   reg |= configs[i];
   writel(reg, ipctl->base + pin_reg->conf_reg);
   dev_dbg(ipctl->dev, "write: offset 0x%x val 0x%x\n",
    pin_reg->conf_reg, reg);
  } else {
   writel(configs[i], ipctl->base + pin_reg->conf_reg);
   dev_dbg(ipctl->dev, "write: offset 0x%x val 0x%lx\n",
    pin_reg->conf_reg, configs[i]);
  }
 }

 return 0;
}
