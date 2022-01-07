
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_usbmisc_data {int index; int oc_pol_active_low; int oc_pol_configured; int dev; } ;
struct imx_usbmisc {int lock; int base; } ;


 int EINVAL ;
 int MX25_EHCI_INTERFACE_DIFF_UNI ;
 int MX25_EHCI_INTERFACE_MASK ;
 int MX25_EHCI_INTERFACE_SINGLE_UNI ;
 int MX25_H1_IPPUE_DOWN_BIT ;
 int MX25_H1_IPPUE_UP_BIT ;
 int MX25_H1_OCPOL_BIT ;
 int MX25_H1_PM_BIT ;
 int MX25_H1_PP_BIT ;
 int MX25_H1_SIC_MASK ;
 int MX25_H1_SIC_SHIFT ;
 int MX25_H1_TLL_BIT ;
 int MX25_H1_USBTE_BIT ;
 int MX25_OTG_OCPOL_BIT ;
 int MX25_OTG_PM_BIT ;
 int MX25_OTG_PP_BIT ;
 int MX25_OTG_SIC_MASK ;
 int MX25_OTG_SIC_SHIFT ;
 struct imx_usbmisc* dev_get_drvdata (int ) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static int usbmisc_imx25_init(struct imx_usbmisc_data *data)
{
 struct imx_usbmisc *usbmisc = dev_get_drvdata(data->dev);
 unsigned long flags;
 u32 val = 0;

 if (data->index > 1)
  return -EINVAL;

 spin_lock_irqsave(&usbmisc->lock, flags);
 switch (data->index) {
 case 0:
  val = readl(usbmisc->base);
  val &= ~(MX25_OTG_SIC_MASK | MX25_OTG_PP_BIT);
  val |= (MX25_EHCI_INTERFACE_DIFF_UNI & MX25_EHCI_INTERFACE_MASK) << MX25_OTG_SIC_SHIFT;
  val |= (MX25_OTG_PM_BIT | MX25_OTG_OCPOL_BIT);





  if (data->oc_pol_configured && data->oc_pol_active_low)
   val &= ~MX25_OTG_OCPOL_BIT;

  writel(val, usbmisc->base);
  break;
 case 1:
  val = readl(usbmisc->base);
  val &= ~(MX25_H1_SIC_MASK | MX25_H1_PP_BIT | MX25_H1_IPPUE_UP_BIT);
  val |= (MX25_EHCI_INTERFACE_SINGLE_UNI & MX25_EHCI_INTERFACE_MASK) << MX25_H1_SIC_SHIFT;
  val |= (MX25_H1_PM_BIT | MX25_H1_OCPOL_BIT | MX25_H1_TLL_BIT |
   MX25_H1_USBTE_BIT | MX25_H1_IPPUE_DOWN_BIT);





  if (data->oc_pol_configured && data->oc_pol_active_low)
   val &= ~MX25_H1_OCPOL_BIT;

  writel(val, usbmisc->base);

  break;
 }
 spin_unlock_irqrestore(&usbmisc->lock, flags);

 return 0;
}
