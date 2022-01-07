
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port_connect_status_change; int port_connect_status; } ;
struct TYPE_4__ {TYPE_1__ b; } ;
struct dwc2_hsotg {scalar_t__ lx_state; TYPE_2__ flags; int priv; } ;


 scalar_t__ DWC2_L0 ;
 int usb_hcd_resume_root_hub (int ) ;

void dwc2_hcd_connect(struct dwc2_hsotg *hsotg)
{
 if (hsotg->lx_state != DWC2_L0)
  usb_hcd_resume_root_hub(hsotg->priv);

 hsotg->flags.b.port_connect_status_change = 1;
 hsotg->flags.b.port_connect_status = 1;
}
