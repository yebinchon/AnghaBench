
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int port_connect_status_change; scalar_t__ port_connect_status; } ;
struct TYPE_4__ {TYPE_1__ b; } ;
struct dwc2_hsotg {scalar_t__ op_state; int dev; TYPE_2__ flags; } ;


 int GINTMSK ;
 int GINTSTS ;
 int GINTSTS_HCHINT ;
 int GINTSTS_NPTXFEMP ;
 int GINTSTS_PTXFEMP ;
 int HPRT0 ;
 int HPRT0_CONNDET ;
 int HPRT0_CONNSTS ;
 scalar_t__ OTG_STATE_A_SUSPEND ;
 int dev_dbg (int ,char*) ;
 int dwc2_disable_host_interrupts (struct dwc2_hsotg*) ;
 int dwc2_hcd_cleanup_channels (struct dwc2_hsotg*) ;
 int dwc2_hcd_connect (struct dwc2_hsotg*) ;
 int dwc2_host_disconnect (struct dwc2_hsotg*) ;
 scalar_t__ dwc2_is_device_mode (struct dwc2_hsotg*) ;
 scalar_t__ dwc2_is_host_mode (struct dwc2_hsotg*) ;
 int dwc2_kill_all_urbs (struct dwc2_hsotg*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;

void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg, bool force)
{
 u32 intr;
 u32 hprt0;


 hsotg->flags.b.port_connect_status_change = 1;
 hsotg->flags.b.port_connect_status = 0;






 intr = dwc2_readl(hsotg, GINTMSK);
 intr &= ~(GINTSTS_NPTXFEMP | GINTSTS_PTXFEMP | GINTSTS_HCHINT);
 dwc2_writel(hsotg, intr, GINTMSK);
 intr = GINTSTS_NPTXFEMP | GINTSTS_PTXFEMP | GINTSTS_HCHINT;
 dwc2_writel(hsotg, intr, GINTSTS);






 if (dwc2_is_device_mode(hsotg)) {
  if (hsotg->op_state != OTG_STATE_A_SUSPEND) {
   dev_dbg(hsotg->dev, "Disconnect: PortPower off\n");
   dwc2_writel(hsotg, 0, HPRT0);
  }

  dwc2_disable_host_interrupts(hsotg);
 }


 dwc2_kill_all_urbs(hsotg);

 if (dwc2_is_host_mode(hsotg))

  dwc2_hcd_cleanup_channels(hsotg);

 dwc2_host_disconnect(hsotg);
 if (!force) {
  hprt0 = dwc2_readl(hsotg, HPRT0);
  if (!(hprt0 & HPRT0_CONNDET) && (hprt0 & HPRT0_CONNSTS))
   dwc2_hcd_connect(hsotg);
 }
}
