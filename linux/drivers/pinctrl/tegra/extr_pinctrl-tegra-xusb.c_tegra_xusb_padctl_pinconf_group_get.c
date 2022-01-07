
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_xusb_padctl_lane {int iddq; int offset; } ;
struct tegra_xusb_padctl {int dev; TYPE_1__* soc; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum tegra_xusb_padctl_param { ____Placeholder_tegra_xusb_padctl_param } tegra_xusb_padctl_param ;
struct TYPE_2__ {struct tegra_xusb_padctl_lane* lanes; } ;


 int BIT (int ) ;
 int EINVAL ;
 int ENOTSUPP ;

 unsigned long TEGRA_XUSB_PADCTL_PACK (int,int) ;
 int TEGRA_XUSB_PADCTL_UNPACK_PARAM (unsigned long) ;
 int dev_err (int ,char*,int) ;
 int padctl_readl (struct tegra_xusb_padctl*,int ) ;
 struct tegra_xusb_padctl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int tegra_xusb_padctl_pinconf_group_get(struct pinctrl_dev *pinctrl,
            unsigned int group,
            unsigned long *config)
{
 struct tegra_xusb_padctl *padctl = pinctrl_dev_get_drvdata(pinctrl);
 const struct tegra_xusb_padctl_lane *lane;
 enum tegra_xusb_padctl_param param;
 u32 value;

 param = TEGRA_XUSB_PADCTL_UNPACK_PARAM(*config);
 lane = &padctl->soc->lanes[group];

 switch (param) {
 case 128:

  if (lane->iddq == 0)
   return -EINVAL;

  value = padctl_readl(padctl, lane->offset);

  if (value & BIT(lane->iddq))
   value = 0;
  else
   value = 1;

  *config = TEGRA_XUSB_PADCTL_PACK(param, value);
  break;

 default:
  dev_err(padctl->dev, "invalid configuration parameter: %04x\n",
   param);
  return -ENOTSUPP;
 }

 return 0;
}
