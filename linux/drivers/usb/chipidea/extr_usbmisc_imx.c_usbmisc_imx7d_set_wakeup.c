
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_usbmisc_data {int dev; } ;
struct imx_usbmisc {int lock; int base; } ;


 int MX6_BM_ID_WAKEUP ;
 int MX6_BM_VBUS_WAKEUP ;
 int MX6_BM_WAKEUP_ENABLE ;
 int MX6_BM_WAKEUP_INTR ;
 int dev_dbg (int ,char*) ;
 struct imx_usbmisc* dev_get_drvdata (int ) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static int usbmisc_imx7d_set_wakeup
 (struct imx_usbmisc_data *data, bool enabled)
{
 struct imx_usbmisc *usbmisc = dev_get_drvdata(data->dev);
 unsigned long flags;
 u32 val;
 u32 wakeup_setting = (MX6_BM_WAKEUP_ENABLE |
  MX6_BM_VBUS_WAKEUP | MX6_BM_ID_WAKEUP);

 spin_lock_irqsave(&usbmisc->lock, flags);
 val = readl(usbmisc->base);
 if (enabled) {
  writel(val | wakeup_setting, usbmisc->base);
 } else {
  if (val & MX6_BM_WAKEUP_INTR)
   dev_dbg(data->dev, "wakeup int\n");
  writel(val & ~wakeup_setting, usbmisc->base);
 }
 spin_unlock_irqrestore(&usbmisc->lock, flags);

 return 0;
}
