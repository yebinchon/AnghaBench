
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_xusb_padctl {int dummy; } ;
struct tegra_xusb_lane_soc {int num_funcs; int mask; int shift; int offset; } ;
struct tegra_xusb_lane {int function; struct tegra_xusb_lane_soc* soc; TYPE_1__* pad; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;


 int padctl_readl (struct tegra_xusb_padctl*,int ) ;
 int padctl_writel (struct tegra_xusb_padctl*,int,int ) ;

__attribute__((used)) static void tegra_xusb_lane_program(struct tegra_xusb_lane *lane)
{
 struct tegra_xusb_padctl *padctl = lane->pad->padctl;
 const struct tegra_xusb_lane_soc *soc = lane->soc;
 u32 value;


 if (soc->num_funcs < 2)
  return;


 value = padctl_readl(padctl, soc->offset);
 value &= ~(soc->mask << soc->shift);
 value |= lane->function << soc->shift;
 padctl_writel(padctl, value, soc->offset);
}
