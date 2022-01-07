
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_usbmisc_data {int index; int pwr_pol; scalar_t__ oc_pol_configured; scalar_t__ oc_pol_active_low; scalar_t__ disable_oc; int dev; } ;
struct imx_usbmisc {int lock; scalar_t__ base; } ;


 int EINVAL ;
 int MX6_BM_OVER_CUR_DIS ;
 int MX6_BM_OVER_CUR_POLARITY ;
 int MX6_BM_PWR_POLARITY ;
 scalar_t__ MX7D_USBNC_USB_CTRL2 ;
 int MX7D_USB_VBUS_WAKEUP_SOURCE_BVALID ;
 int MX7D_USB_VBUS_WAKEUP_SOURCE_MASK ;
 struct imx_usbmisc* dev_get_drvdata (int ) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usbmisc_imx7d_set_wakeup (struct imx_usbmisc_data*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int usbmisc_imx7d_init(struct imx_usbmisc_data *data)
{
 struct imx_usbmisc *usbmisc = dev_get_drvdata(data->dev);
 unsigned long flags;
 u32 reg;

 if (data->index >= 1)
  return -EINVAL;

 spin_lock_irqsave(&usbmisc->lock, flags);
 reg = readl(usbmisc->base);
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
 writel(reg, usbmisc->base);

 reg = readl(usbmisc->base + MX7D_USBNC_USB_CTRL2);
 reg &= ~MX7D_USB_VBUS_WAKEUP_SOURCE_MASK;
 writel(reg | MX7D_USB_VBUS_WAKEUP_SOURCE_BVALID,
   usbmisc->base + MX7D_USBNC_USB_CTRL2);

 spin_unlock_irqrestore(&usbmisc->lock, flags);

 usbmisc_imx7d_set_wakeup(data, 0);

 return 0;
}
