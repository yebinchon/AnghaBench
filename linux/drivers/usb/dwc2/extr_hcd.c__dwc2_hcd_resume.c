
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct usb_hcd {int flags; } ;
struct TYPE_6__ {scalar_t__ power_down; } ;
struct TYPE_4__ {int port_suspend_change; } ;
struct TYPE_5__ {TYPE_1__ b; } ;
struct dwc2_hsotg {scalar_t__ lx_state; int lock; TYPE_3__ params; TYPE_2__ flags; scalar_t__ bus_suspended; scalar_t__ regs; int dev; int uphy; } ;


 void* DWC2_L0 ;
 scalar_t__ DWC2_L2 ;
 scalar_t__ DWC2_POWER_DOWN_PARAM_PARTIAL ;
 int ENOTSUPP ;
 int HCD_FLAG_HW_ACCESSIBLE ;
 int HPRT0 ;
 int HPRT0_CONNDET ;
 int HPRT0_ENACHG ;
 int HPRT0_PWR ;
 int IS_ERR_OR_NULL (int ) ;
 scalar_t__ PCGCTL ;
 int PCGCTL_STOPPCLK ;
 int dev_err (int ,char*) ;
 int dwc2_exit_partial_power_down (struct dwc2_hsotg*,int) ;
 struct dwc2_hsotg* dwc2_hcd_to_hsotg (struct usb_hcd*) ;
 scalar_t__ dwc2_is_device_mode (struct dwc2_hsotg*) ;
 int dwc2_port_resume (struct dwc2_hsotg*) ;
 int dwc2_vbus_supply_init (struct dwc2_hsotg*) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;
 int readl (scalar_t__) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_phy_set_suspend (int ,int) ;
 int usleep_range (int,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int _dwc2_hcd_resume(struct usb_hcd *hcd)
{
 struct dwc2_hsotg *hsotg = dwc2_hcd_to_hsotg(hcd);
 unsigned long flags;
 u32 pcgctl;
 int ret = 0;

 spin_lock_irqsave(&hsotg->lock, flags);

 if (dwc2_is_device_mode(hsotg))
  goto unlock;

 if (hsotg->lx_state != DWC2_L2)
  goto unlock;

 if (hsotg->params.power_down > DWC2_POWER_DOWN_PARAM_PARTIAL) {
  hsotg->lx_state = DWC2_L0;
  goto unlock;
 }






 if (!IS_ERR_OR_NULL(hsotg->uphy)) {
  spin_unlock_irqrestore(&hsotg->lock, flags);
  usb_phy_set_suspend(hsotg->uphy, 0);
  spin_lock_irqsave(&hsotg->lock, flags);
 }

 if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {




  set_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);



  ret = dwc2_exit_partial_power_down(hsotg, 1);
  if (ret && (ret != -ENOTSUPP))
   dev_err(hsotg->dev, "exit partial_power_down failed\n");
 } else {
  pcgctl = readl(hsotg->regs + PCGCTL);
  pcgctl &= ~PCGCTL_STOPPCLK;
  writel(pcgctl, hsotg->regs + PCGCTL);
 }

 hsotg->lx_state = DWC2_L0;

 spin_unlock_irqrestore(&hsotg->lock, flags);

 if (hsotg->bus_suspended) {
  spin_lock_irqsave(&hsotg->lock, flags);
  hsotg->flags.b.port_suspend_change = 1;
  spin_unlock_irqrestore(&hsotg->lock, flags);
  dwc2_port_resume(hsotg);
 } else {
  if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
   dwc2_vbus_supply_init(hsotg);


   usleep_range(3000, 5000);
  }





  dwc2_writel(hsotg, HPRT0_PWR | HPRT0_CONNDET |
    HPRT0_ENACHG, HPRT0);

  usleep_range(5000, 7000);
 }

 return ret;
unlock:
 spin_unlock_irqrestore(&hsotg->lock, flags);

 return ret;
}
