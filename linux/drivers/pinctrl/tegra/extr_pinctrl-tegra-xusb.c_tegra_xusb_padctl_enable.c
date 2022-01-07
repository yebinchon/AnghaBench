
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_xusb_padctl {int lock; int enable; } ;


 int XUSB_PADCTL_ELPG_PROGRAM ;
 int XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN ;
 int XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN_EARLY ;
 int XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_VCORE_DOWN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int padctl_readl (struct tegra_xusb_padctl*,int ) ;
 int padctl_writel (struct tegra_xusb_padctl*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_xusb_padctl_enable(struct tegra_xusb_padctl *padctl)
{
 u32 value;

 mutex_lock(&padctl->lock);

 if (padctl->enable++ > 0)
  goto out;

 value = padctl_readl(padctl, XUSB_PADCTL_ELPG_PROGRAM);
 value &= ~XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN;
 padctl_writel(padctl, value, XUSB_PADCTL_ELPG_PROGRAM);

 usleep_range(100, 200);

 value = padctl_readl(padctl, XUSB_PADCTL_ELPG_PROGRAM);
 value &= ~XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN_EARLY;
 padctl_writel(padctl, value, XUSB_PADCTL_ELPG_PROGRAM);

 usleep_range(100, 200);

 value = padctl_readl(padctl, XUSB_PADCTL_ELPG_PROGRAM);
 value &= ~XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_VCORE_DOWN;
 padctl_writel(padctl, value, XUSB_PADCTL_ELPG_PROGRAM);

out:
 mutex_unlock(&padctl->lock);
 return 0;
}
