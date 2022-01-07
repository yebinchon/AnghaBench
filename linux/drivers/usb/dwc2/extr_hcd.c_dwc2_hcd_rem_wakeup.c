
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port_suspend_change; int port_l1_change; } ;
struct TYPE_4__ {TYPE_1__ b; } ;
struct dwc2_hsotg {scalar_t__ lx_state; TYPE_2__ flags; int priv; scalar_t__ bus_suspended; } ;


 scalar_t__ DWC2_L1 ;
 int usb_hcd_resume_root_hub (int ) ;

__attribute__((used)) static void dwc2_hcd_rem_wakeup(struct dwc2_hsotg *hsotg)
{
 if (hsotg->bus_suspended) {
  hsotg->flags.b.port_suspend_change = 1;
  usb_hcd_resume_root_hub(hsotg->priv);
 }

 if (hsotg->lx_state == DWC2_L1)
  hsotg->flags.b.port_l1_change = 1;
}
