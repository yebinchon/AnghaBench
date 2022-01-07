
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct imx_pinctrl_soc_info {int flags; } ;
struct imx_pinctrl {scalar_t__ base; struct imx_pin_reg* pin_regs; int dev; struct imx_pinctrl_soc_info* info; } ;
struct imx_pin_reg {int conf_reg; } ;


 int IMX_USE_SCU ;
 int dev_err (int ,char*,int ) ;
 int imx_pinconf_get_scu (struct pinctrl_dev*,unsigned int,unsigned long*) ;
 int pin_get_name (struct pinctrl_dev*,unsigned int) ;
 struct imx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 unsigned long readl (scalar_t__) ;
 int seq_printf (struct seq_file*,char*,unsigned long) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void imx_pinconf_dbg_show(struct pinctrl_dev *pctldev,
       struct seq_file *s, unsigned pin_id)
{
 struct imx_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 const struct imx_pinctrl_soc_info *info = ipctl->info;
 const struct imx_pin_reg *pin_reg;
 unsigned long config;
 int ret;

 if (info->flags & IMX_USE_SCU) {
  ret = imx_pinconf_get_scu(pctldev, pin_id, &config);
  if (ret) {
   dev_err(ipctl->dev, "failed to get %s pinconf\n",
    pin_get_name(pctldev, pin_id));
   seq_puts(s, "N/A");
   return;
  }
 } else {
  pin_reg = &ipctl->pin_regs[pin_id];
  if (pin_reg->conf_reg == -1) {
   seq_puts(s, "N/A");
   return;
  }

  config = readl(ipctl->base + pin_reg->conf_reg);
 }

 seq_printf(s, "0x%lx", config);
}
