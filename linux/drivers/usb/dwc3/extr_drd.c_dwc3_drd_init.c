
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notifier_call; } ;
struct dwc3 {int otg_irq; int dev; int current_dr_role; TYPE_1__ edev_nb; scalar_t__ edev; } ;


 int DWC3_GCTL_PRTCAP_OTG ;
 int DWC3_OTG_ALL_EVENTS ;
 int ENODEV ;
 int EXTCON_USB_HOST ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int dev_err (int ,char*,...) ;
 int dwc3_drd_notifier ;
 int dwc3_drd_update (struct dwc3*) ;
 scalar_t__ dwc3_get_extcon (struct dwc3*) ;
 int dwc3_otg_clear_events (struct dwc3*) ;
 int dwc3_otg_disable_events (struct dwc3*,int ) ;
 int dwc3_otg_get_irq (struct dwc3*) ;
 int dwc3_otg_init (struct dwc3*) ;
 int dwc3_otg_irq ;
 int dwc3_otg_thread_irq ;
 int dwc3_set_mode (struct dwc3*,int ) ;
 int dwc3_set_prtcap (struct dwc3*,int ) ;
 int extcon_register_notifier (scalar_t__,int ,TYPE_1__*) ;
 int request_threaded_irq (int,int ,int ,int ,char*,struct dwc3*) ;

int dwc3_drd_init(struct dwc3 *dwc)
{
 int ret, irq;

 dwc->edev = dwc3_get_extcon(dwc);
 if (IS_ERR(dwc->edev))
  return PTR_ERR(dwc->edev);

 if (dwc->edev) {
  dwc->edev_nb.notifier_call = dwc3_drd_notifier;
  ret = extcon_register_notifier(dwc->edev, EXTCON_USB_HOST,
            &dwc->edev_nb);
  if (ret < 0) {
   dev_err(dwc->dev, "couldn't register cable notifier\n");
   return ret;
  }

  dwc3_drd_update(dwc);
 } else {
  dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_OTG);
  dwc->current_dr_role = DWC3_GCTL_PRTCAP_OTG;


  irq = dwc3_otg_get_irq(dwc);
  if (irq < 0)
   return irq;

  dwc->otg_irq = irq;


  dwc3_otg_disable_events(dwc, DWC3_OTG_ALL_EVENTS);

  dwc3_otg_clear_events(dwc);

  ret = request_threaded_irq(dwc->otg_irq, dwc3_otg_irq,
        dwc3_otg_thread_irq,
        IRQF_SHARED, "dwc3-otg", dwc);
  if (ret) {
   dev_err(dwc->dev, "failed to request irq #%d --> %d\n",
    dwc->otg_irq, ret);
   ret = -ENODEV;
   return ret;
  }

  dwc3_otg_init(dwc);
  dwc3_set_mode(dwc, DWC3_GCTL_PRTCAP_OTG);
 }

 return 0;
}
