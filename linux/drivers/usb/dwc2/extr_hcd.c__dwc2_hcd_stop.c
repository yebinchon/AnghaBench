
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {int flags; int state; int irq; } ;
struct dwc2_hsotg {int lock; int lx_state; } ;


 int DWC2_L3 ;
 int HCD_FLAG_HW_ACCESSIBLE ;
 int HC_STATE_HALT ;
 int HPRT0_PWR ;
 int clear_bit (int ,int *) ;
 int dwc2_disable_host_interrupts (struct dwc2_hsotg*) ;
 int dwc2_hcd_disconnect (struct dwc2_hsotg*,int) ;
 int dwc2_hcd_stop (struct dwc2_hsotg*) ;
 struct dwc2_hsotg* dwc2_hcd_to_hsotg (struct usb_hcd*) ;
 int dwc2_read_hprt0 (struct dwc2_hsotg*) ;
 int dwc2_vbus_supply_exit (struct dwc2_hsotg*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_irq (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void _dwc2_hcd_stop(struct usb_hcd *hcd)
{
 struct dwc2_hsotg *hsotg = dwc2_hcd_to_hsotg(hcd);
 unsigned long flags;
 u32 hprt0;


 dwc2_disable_host_interrupts(hsotg);


 synchronize_irq(hcd->irq);

 spin_lock_irqsave(&hsotg->lock, flags);
 hprt0 = dwc2_read_hprt0(hsotg);

 dwc2_hcd_disconnect(hsotg, 1);
 dwc2_hcd_stop(hsotg);
 hsotg->lx_state = DWC2_L3;
 hcd->state = HC_STATE_HALT;
 clear_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);
 spin_unlock_irqrestore(&hsotg->lock, flags);


 if (hprt0 & HPRT0_PWR)
  dwc2_vbus_supply_exit(hsotg);

 usleep_range(1000, 3000);
}
