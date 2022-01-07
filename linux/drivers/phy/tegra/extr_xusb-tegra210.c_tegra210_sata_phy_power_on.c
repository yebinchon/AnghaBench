
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_xusb_padctl {int lock; } ;
struct tegra_xusb_lane {int index; TYPE_1__* pad; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;


 int XUSB_PADCTL_USB3_PAD_MUX ;
 int XUSB_PADCTL_USB3_PAD_MUX_SATA_IDDQ_DISABLE (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int padctl_readl (struct tegra_xusb_padctl*,int ) ;
 int padctl_writel (struct tegra_xusb_padctl*,int ,int ) ;
 struct tegra_xusb_lane* phy_get_drvdata (struct phy*) ;
 int tegra210_sata_uphy_enable (struct tegra_xusb_padctl*,int) ;

__attribute__((used)) static int tegra210_sata_phy_power_on(struct phy *phy)
{
 struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
 struct tegra_xusb_padctl *padctl = lane->pad->padctl;
 u32 value;
 int err;

 mutex_lock(&padctl->lock);

 err = tegra210_sata_uphy_enable(padctl, 0);
 if (err < 0)
  goto unlock;

 value = padctl_readl(padctl, XUSB_PADCTL_USB3_PAD_MUX);
 value |= XUSB_PADCTL_USB3_PAD_MUX_SATA_IDDQ_DISABLE(lane->index);
 padctl_writel(padctl, value, XUSB_PADCTL_USB3_PAD_MUX);

unlock:
 mutex_unlock(&padctl->lock);
 return err;
}
