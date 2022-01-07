
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct tegra_xusb_padctl_lane {unsigned int num_funcs; unsigned int* funcs; unsigned int mask; unsigned int shift; int offset; } ;
struct tegra_xusb_padctl {TYPE_1__* soc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl_lane* lanes; } ;


 int EINVAL ;
 unsigned int padctl_readl (struct tegra_xusb_padctl*,int ) ;
 int padctl_writel (struct tegra_xusb_padctl*,unsigned int,int ) ;
 struct tegra_xusb_padctl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int tegra_xusb_padctl_pinmux_set(struct pinctrl_dev *pinctrl,
     unsigned int function,
     unsigned int group)
{
 struct tegra_xusb_padctl *padctl = pinctrl_dev_get_drvdata(pinctrl);
 const struct tegra_xusb_padctl_lane *lane;
 unsigned int i;
 u32 value;

 lane = &padctl->soc->lanes[group];

 for (i = 0; i < lane->num_funcs; i++)
  if (lane->funcs[i] == function)
   break;

 if (i >= lane->num_funcs)
  return -EINVAL;

 value = padctl_readl(padctl, lane->offset);
 value &= ~(lane->mask << lane->shift);
 value |= i << lane->shift;
 padctl_writel(padctl, value, lane->offset);

 return 0;
}
