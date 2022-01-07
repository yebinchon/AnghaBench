
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_usbmisc_data {int index; scalar_t__ disable_oc; int dev; } ;
struct imx_usbmisc {int lock; int base; } ;


 int EINVAL ;
 int MX27_H1_PM_BIT ;
 int MX27_H2_PM_BIT ;
 int MX27_OTG_PM_BIT ;
 struct imx_usbmisc* dev_get_drvdata (int ) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static int usbmisc_imx27_init(struct imx_usbmisc_data *data)
{
 struct imx_usbmisc *usbmisc = dev_get_drvdata(data->dev);
 unsigned long flags;
 u32 val;

 switch (data->index) {
 case 0:
  val = MX27_OTG_PM_BIT;
  break;
 case 1:
  val = MX27_H1_PM_BIT;
  break;
 case 2:
  val = MX27_H2_PM_BIT;
  break;
 default:
  return -EINVAL;
 }

 spin_lock_irqsave(&usbmisc->lock, flags);
 if (data->disable_oc)
  val = readl(usbmisc->base) | val;
 else
  val = readl(usbmisc->base) & ~val;
 writel(val, usbmisc->base);
 spin_unlock_irqrestore(&usbmisc->lock, flags);

 return 0;
}
