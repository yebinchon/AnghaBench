
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct dwc3 {scalar_t__ dr_mode; int current_dr_role; int desired_dr_role; int dev; int usb3_generic_phy; int usb2_generic_phy; TYPE_1__* usb2_phy; int lock; int desired_otg_role; scalar_t__ edev; } ;
struct TYPE_2__ {int otg; } ;





 int DWC3_OTG_ROLE_IDLE ;
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
 int dwc3_otg_exit (struct dwc3*) ;
 int dwc3_otg_init (struct dwc3*) ;
 int dwc3_otg_update (struct dwc3*,int) ;
 int dwc3_set_prtcap (struct dwc3*,int) ;
 int otg_set_vbus (int ,int) ;
 int phy_set_mode (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dwc3* work_to_dwc (struct work_struct*) ;

__attribute__((used)) static void __dwc3_set_mode(struct work_struct *work)
{
 struct dwc3 *dwc = work_to_dwc(work);
 unsigned long flags;
 int ret;

 if (dwc->dr_mode != USB_DR_MODE_OTG)
  return;

 if (dwc->current_dr_role == 128)
  dwc3_otg_update(dwc, 0);

 if (!dwc->desired_dr_role)
  return;

 if (dwc->desired_dr_role == dwc->current_dr_role)
  return;

 if (dwc->desired_dr_role == 128 && dwc->edev)
  return;

 switch (dwc->current_dr_role) {
 case 129:
  dwc3_host_exit(dwc);
  break;
 case 130:
  dwc3_gadget_exit(dwc);
  dwc3_event_buffers_cleanup(dwc);
  break;
 case 128:
  dwc3_otg_exit(dwc);
  spin_lock_irqsave(&dwc->lock, flags);
  dwc->desired_otg_role = DWC3_OTG_ROLE_IDLE;
  spin_unlock_irqrestore(&dwc->lock, flags);
  dwc3_otg_update(dwc, 1);
  break;
 default:
  break;
 }

 spin_lock_irqsave(&dwc->lock, flags);

 dwc3_set_prtcap(dwc, dwc->desired_dr_role);

 spin_unlock_irqrestore(&dwc->lock, flags);

 switch (dwc->desired_dr_role) {
 case 129:
  ret = dwc3_host_init(dwc);
  if (ret) {
   dev_err(dwc->dev, "failed to initialize host\n");
  } else {
   if (dwc->usb2_phy)
    otg_set_vbus(dwc->usb2_phy->otg, 1);
   phy_set_mode(dwc->usb2_generic_phy, PHY_MODE_USB_HOST);
   phy_set_mode(dwc->usb3_generic_phy, PHY_MODE_USB_HOST);
  }
  break;
 case 130:
  dwc3_event_buffers_setup(dwc);

  if (dwc->usb2_phy)
   otg_set_vbus(dwc->usb2_phy->otg, 0);
  phy_set_mode(dwc->usb2_generic_phy, PHY_MODE_USB_DEVICE);
  phy_set_mode(dwc->usb3_generic_phy, PHY_MODE_USB_DEVICE);

  ret = dwc3_gadget_init(dwc);
  if (ret)
   dev_err(dwc->dev, "failed to initialize peripheral\n");
  break;
 case 128:
  dwc3_otg_init(dwc);
  dwc3_otg_update(dwc, 0);
  break;
 default:
  break;
 }

}
