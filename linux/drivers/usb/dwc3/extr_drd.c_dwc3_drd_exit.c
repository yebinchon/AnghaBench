
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int current_dr_role; int otg_irq; scalar_t__ edev; int lock; int desired_otg_role; int drd_work; int edev_nb; } ;





 int DWC3_OTG_ROLE_IDLE ;
 int EXTCON_USB_HOST ;
 int cancel_work_sync (int *) ;
 int dwc3_event_buffers_cleanup (struct dwc3*) ;
 int dwc3_gadget_exit (struct dwc3*) ;
 int dwc3_host_exit (struct dwc3*) ;
 int dwc3_otg_exit (struct dwc3*) ;
 int dwc3_otg_update (struct dwc3*,int) ;
 int extcon_unregister_notifier (scalar_t__,int ,int *) ;
 int free_irq (int ,struct dwc3*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dwc3_drd_exit(struct dwc3 *dwc)
{
 unsigned long flags;

 if (dwc->edev)
  extcon_unregister_notifier(dwc->edev, EXTCON_USB_HOST,
        &dwc->edev_nb);

 cancel_work_sync(&dwc->drd_work);


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

 if (!dwc->edev)
  free_irq(dwc->otg_irq, dwc);
}
