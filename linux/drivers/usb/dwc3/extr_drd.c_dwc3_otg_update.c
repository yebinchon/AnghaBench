
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dwc3 {scalar_t__ dr_mode; scalar_t__ current_dr_role; int desired_otg_role; int current_otg_role; int dev; int usb2_generic_phy; TYPE_1__* usb2_phy; int lock; int regs; } ;
struct TYPE_2__ {int otg; } ;


 scalar_t__ DWC3_GCTL_PRTCAP_OTG ;
 int DWC3_OSTS ;
 int DWC3_OSTS_CONIDSTS ;


 int PHY_MODE_USB_DEVICE ;
 int PHY_MODE_USB_HOST ;
 scalar_t__ USB_DR_MODE_OTG ;
 int dev_err (int ,char*) ;
 int dwc3_event_buffers_cleanup (struct dwc3*) ;
 int dwc3_event_buffers_setup (struct dwc3*) ;
 int dwc3_gadget_exit (struct dwc3*) ;
 int dwc3_gadget_init (struct dwc3*) ;
 int dwc3_host_exit (struct dwc3*) ;
 int dwc3_host_init (struct dwc3*) ;
 int dwc3_otg_device_exit (struct dwc3*) ;
 int dwc3_otg_device_init (struct dwc3*) ;
 int dwc3_otg_host_exit (struct dwc3*) ;
 int dwc3_otg_host_init (struct dwc3*) ;
 int dwc3_otgregs_init (struct dwc3*) ;
 int dwc3_readl (int ,int ) ;
 int otg_set_vbus (int ,int) ;
 int phy_set_mode (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dwc3_otg_update(struct dwc3 *dwc, bool ignore_idstatus)
{
 int ret;
 u32 reg;
 int id;
 unsigned long flags;

 if (dwc->dr_mode != USB_DR_MODE_OTG)
  return;


 if (dwc->current_dr_role != DWC3_GCTL_PRTCAP_OTG)
  return;

 if (!ignore_idstatus) {
  reg = dwc3_readl(dwc->regs, DWC3_OSTS);
  id = !!(reg & DWC3_OSTS_CONIDSTS);

  dwc->desired_otg_role = id ? 129 :
     128;
 }

 if (dwc->desired_otg_role == dwc->current_otg_role)
  return;

 switch (dwc->current_otg_role) {
 case 128:
  dwc3_host_exit(dwc);
  spin_lock_irqsave(&dwc->lock, flags);
  dwc3_otg_host_exit(dwc);
  spin_unlock_irqrestore(&dwc->lock, flags);
  break;
 case 129:
  dwc3_gadget_exit(dwc);
  spin_lock_irqsave(&dwc->lock, flags);
  dwc3_event_buffers_cleanup(dwc);
  dwc3_otg_device_exit(dwc);
  spin_unlock_irqrestore(&dwc->lock, flags);
  break;
 default:
  break;
 }

 spin_lock_irqsave(&dwc->lock, flags);

 dwc->current_otg_role = dwc->desired_otg_role;

 spin_unlock_irqrestore(&dwc->lock, flags);

 switch (dwc->desired_otg_role) {
 case 128:
  spin_lock_irqsave(&dwc->lock, flags);
  dwc3_otgregs_init(dwc);
  dwc3_otg_host_init(dwc);
  spin_unlock_irqrestore(&dwc->lock, flags);
  ret = dwc3_host_init(dwc);
  if (ret) {
   dev_err(dwc->dev, "failed to initialize host\n");
  } else {
   if (dwc->usb2_phy)
    otg_set_vbus(dwc->usb2_phy->otg, 1);
   if (dwc->usb2_generic_phy)
    phy_set_mode(dwc->usb2_generic_phy,
          PHY_MODE_USB_HOST);
  }
  break;
 case 129:
  spin_lock_irqsave(&dwc->lock, flags);
  dwc3_otgregs_init(dwc);
  dwc3_otg_device_init(dwc);
  dwc3_event_buffers_setup(dwc);
  spin_unlock_irqrestore(&dwc->lock, flags);

  if (dwc->usb2_phy)
   otg_set_vbus(dwc->usb2_phy->otg, 0);
  if (dwc->usb2_generic_phy)
   phy_set_mode(dwc->usb2_generic_phy,
         PHY_MODE_USB_DEVICE);
  ret = dwc3_gadget_init(dwc);
  if (ret)
   dev_err(dwc->dev, "failed to initialize peripheral\n");
  break;
 default:
  break;
 }
}
