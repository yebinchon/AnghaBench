
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_xusb_padctl {int lock; } ;
struct tegra186_xusb_padctl {scalar_t__ bias_pad_enable; int usb2_trk_clk; } ;


 int USB2_PD_TRK ;
 scalar_t__ WARN_ON (int) ;
 int XUSB_PADCTL_USB2_BIAS_PAD_CTL1 ;
 int clk_disable_unprepare (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int padctl_readl (struct tegra_xusb_padctl*,int ) ;
 int padctl_writel (struct tegra_xusb_padctl*,int ,int ) ;
 struct tegra186_xusb_padctl* to_tegra186_xusb_padctl (struct tegra_xusb_padctl*) ;

__attribute__((used)) static void tegra186_utmi_bias_pad_power_off(struct tegra_xusb_padctl *padctl)
{
 struct tegra186_xusb_padctl *priv = to_tegra186_xusb_padctl(padctl);
 u32 value;

 mutex_lock(&padctl->lock);

 if (WARN_ON(priv->bias_pad_enable == 0)) {
  mutex_unlock(&padctl->lock);
  return;
 }

 if (--priv->bias_pad_enable > 0) {
  mutex_unlock(&padctl->lock);
  return;
 }

 value = padctl_readl(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
 value |= USB2_PD_TRK;
 padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);

 clk_disable_unprepare(priv->usb2_trk_clk);

 mutex_unlock(&padctl->lock);
}
