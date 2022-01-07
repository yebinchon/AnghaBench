
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_usbmisc_data {int index; int pwr_pol; scalar_t__ hsic; scalar_t__ oc_pol_configured; scalar_t__ oc_pol_active_low; scalar_t__ disable_oc; int dev; } ;
struct imx_usbmisc {int lock; scalar_t__ base; } ;


 int EINVAL ;
 int MX6_BM_HSIC_CLK_ON ;
 int MX6_BM_HSIC_EN ;
 int MX6_BM_NON_BURST_SETTING ;
 int MX6_BM_OVER_CUR_DIS ;
 int MX6_BM_OVER_CUR_POLARITY ;
 int MX6_BM_PWR_POLARITY ;
 int MX6_BM_UTMI_ON_CLOCK ;
 scalar_t__ MX6_USB_HSIC_CTRL_OFFSET ;
 struct imx_usbmisc* dev_get_drvdata (int ) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usbmisc_imx6q_set_wakeup (struct imx_usbmisc_data*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int usbmisc_imx6q_init(struct imx_usbmisc_data *data)
{
 struct imx_usbmisc *usbmisc = dev_get_drvdata(data->dev);
 unsigned long flags;
 u32 reg;

 if (data->index > 3)
  return -EINVAL;

 spin_lock_irqsave(&usbmisc->lock, flags);

 reg = readl(usbmisc->base + data->index * 4);
 if (data->disable_oc) {
  reg |= MX6_BM_OVER_CUR_DIS;
 } else {
  reg &= ~MX6_BM_OVER_CUR_DIS;





  if (data->oc_pol_configured && data->oc_pol_active_low)
   reg |= MX6_BM_OVER_CUR_POLARITY;
  else if (data->oc_pol_configured)
   reg &= ~MX6_BM_OVER_CUR_POLARITY;
 }

 if (data->pwr_pol == 1)
  reg |= MX6_BM_PWR_POLARITY;
 writel(reg, usbmisc->base + data->index * 4);


 reg = readl(usbmisc->base + data->index * 4);
 writel(reg | MX6_BM_NON_BURST_SETTING,
   usbmisc->base + data->index * 4);


 if (data->hsic) {
  reg = readl(usbmisc->base + data->index * 4);
  writel(reg | MX6_BM_UTMI_ON_CLOCK,
   usbmisc->base + data->index * 4);
  reg = readl(usbmisc->base + MX6_USB_HSIC_CTRL_OFFSET
   + (data->index - 2) * 4);
  reg |= MX6_BM_HSIC_EN | MX6_BM_HSIC_CLK_ON;
  writel(reg, usbmisc->base + MX6_USB_HSIC_CTRL_OFFSET
   + (data->index - 2) * 4);
 }

 spin_unlock_irqrestore(&usbmisc->lock, flags);

 usbmisc_imx6q_set_wakeup(data, 0);

 return 0;
}
