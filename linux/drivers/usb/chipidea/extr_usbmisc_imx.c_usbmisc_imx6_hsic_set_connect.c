
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_usbmisc_data {int dev; } ;
struct imx_usbmisc {int lock; scalar_t__ base; } ;


 int MX6_BM_HSIC_DEV_CONN ;
 scalar_t__ MX6_USB_HSIC_CTRL_OFFSET ;
 struct imx_usbmisc* dev_get_drvdata (int ) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usbmisc_imx6_hsic_get_reg_offset (struct imx_usbmisc_data*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int usbmisc_imx6_hsic_set_connect(struct imx_usbmisc_data *data)
{
 unsigned long flags;
 u32 val;
 struct imx_usbmisc *usbmisc = dev_get_drvdata(data->dev);
 int offset;

 spin_lock_irqsave(&usbmisc->lock, flags);
 offset = usbmisc_imx6_hsic_get_reg_offset(data);
 if (offset < 0) {
  spin_unlock_irqrestore(&usbmisc->lock, flags);
  return offset;
 }

 val = readl(usbmisc->base + MX6_USB_HSIC_CTRL_OFFSET + offset);
 if (!(val & MX6_BM_HSIC_DEV_CONN))
  writel(val | MX6_BM_HSIC_DEV_CONN,
   usbmisc->base + MX6_USB_HSIC_CTRL_OFFSET + offset);

 spin_unlock_irqrestore(&usbmisc->lock, flags);

 return 0;
}
