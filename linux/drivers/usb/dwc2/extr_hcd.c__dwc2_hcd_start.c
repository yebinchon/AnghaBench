
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {int flags; int state; } ;
struct usb_bus {scalar_t__ root_hub; } ;
struct dwc2_hsotg {int lock; int dev; int lx_state; } ;


 int DWC2_L0 ;
 int HCD_FLAG_HW_ACCESSIBLE ;
 int HC_STATE_RUNNING ;
 int HPRT0_PWR ;
 int dev_dbg (int ,char*) ;
 int dwc2_hcd_reinit (struct dwc2_hsotg*) ;
 struct dwc2_hsotg* dwc2_hcd_to_hsotg (struct usb_hcd*) ;
 scalar_t__ dwc2_is_device_mode (struct dwc2_hsotg*) ;
 int dwc2_read_hprt0 (struct dwc2_hsotg*) ;
 int dwc2_vbus_supply_init (struct dwc2_hsotg*) ;
 struct usb_bus* hcd_to_bus (struct usb_hcd*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_resume_root_hub (struct usb_hcd*) ;

__attribute__((used)) static int _dwc2_hcd_start(struct usb_hcd *hcd)
{
 struct dwc2_hsotg *hsotg = dwc2_hcd_to_hsotg(hcd);
 struct usb_bus *bus = hcd_to_bus(hcd);
 unsigned long flags;
 u32 hprt0;
 int ret;

 dev_dbg(hsotg->dev, "DWC OTG HCD START\n");

 spin_lock_irqsave(&hsotg->lock, flags);
 hsotg->lx_state = DWC2_L0;
 hcd->state = HC_STATE_RUNNING;
 set_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);

 if (dwc2_is_device_mode(hsotg)) {
  spin_unlock_irqrestore(&hsotg->lock, flags);
  return 0;
 }

 dwc2_hcd_reinit(hsotg);

 hprt0 = dwc2_read_hprt0(hsotg);

 if (hprt0 & HPRT0_PWR) {

  spin_unlock_irqrestore(&hsotg->lock, flags);
  ret = dwc2_vbus_supply_init(hsotg);
  if (ret)
   return ret;
  spin_lock_irqsave(&hsotg->lock, flags);
 }


 if (bus->root_hub) {
  dev_dbg(hsotg->dev, "DWC OTG HCD Has Root Hub\n");

  usb_hcd_resume_root_hub(hcd);
 }

 spin_unlock_irqrestore(&hsotg->lock, flags);

 return 0;
}
