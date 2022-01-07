
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {scalar_t__ op_state; int dev; } ;


 int GINTSTS ;
 int GINTSTS_DISCONNINT ;
 scalar_t__ OTG_STATE_A_HOST ;
 int dev_dbg (int ,char*,char*,int ) ;
 int dwc2_hcd_disconnect (struct dwc2_hsotg*,int) ;
 scalar_t__ dwc2_is_host_mode (struct dwc2_hsotg*) ;
 int dwc2_op_state_str (struct dwc2_hsotg*) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;

__attribute__((used)) static void dwc2_handle_disconnect_intr(struct dwc2_hsotg *hsotg)
{
 dwc2_writel(hsotg, GINTSTS_DISCONNINT, GINTSTS);

 dev_dbg(hsotg->dev, "++Disconnect Detected Interrupt++ (%s) %s\n",
  dwc2_is_host_mode(hsotg) ? "Host" : "Device",
  dwc2_op_state_str(hsotg));

 if (hsotg->op_state == OTG_STATE_A_HOST)
  dwc2_hcd_disconnect(hsotg, 0);
}
