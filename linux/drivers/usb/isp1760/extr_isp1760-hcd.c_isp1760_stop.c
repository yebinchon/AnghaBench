
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {int regs; } ;
struct isp1760_hcd {int lock; } ;


 int ClearPortFeature ;
 int HC_CONFIGFLAG ;
 int HC_HW_MODE_CTRL ;
 int HW_GLOBAL_INTR_EN ;
 int USB_PORT_FEAT_POWER ;
 int del_timer (int *) ;
 int ehci_reset (struct usb_hcd*) ;
 int errata2_timer ;
 struct isp1760_hcd* hcd_to_priv (struct usb_hcd*) ;
 int isp1760_hub_control (struct usb_hcd*,int ,int ,int,int *,int ) ;
 int msleep (int) ;
 int reg_read32 (int ,int ) ;
 int reg_write32 (int ,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void isp1760_stop(struct usb_hcd *hcd)
{
 struct isp1760_hcd *priv = hcd_to_priv(hcd);
 u32 temp;

 del_timer(&errata2_timer);

 isp1760_hub_control(hcd, ClearPortFeature, USB_PORT_FEAT_POWER, 1,
   ((void*)0), 0);
 msleep(20);

 spin_lock_irq(&priv->lock);
 ehci_reset(hcd);

 temp = reg_read32(hcd->regs, HC_HW_MODE_CTRL);
 reg_write32(hcd->regs, HC_HW_MODE_CTRL, temp &= ~HW_GLOBAL_INTR_EN);
 spin_unlock_irq(&priv->lock);

 reg_write32(hcd->regs, HC_CONFIGFLAG, 0);
}
