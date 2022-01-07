
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {scalar_t__ lx_state; int dev; } ;


 scalar_t__ DWC2_L2 ;
 int ENOTSUPP ;
 int GINTSTS ;
 int GINTSTS_SESSREQINT ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int dev_err (int ,char*) ;
 int dwc2_exit_partial_power_down (struct dwc2_hsotg*,int) ;
 int dwc2_hsotg_disconnect (struct dwc2_hsotg*) ;
 scalar_t__ dwc2_is_device_mode (struct dwc2_hsotg*) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;

__attribute__((used)) static void dwc2_handle_session_req_intr(struct dwc2_hsotg *hsotg)
{
 int ret;


 dwc2_writel(hsotg, GINTSTS_SESSREQINT, GINTSTS);

 dev_dbg(hsotg->dev, "Session request interrupt - lx_state=%d\n",
  hsotg->lx_state);

 if (dwc2_is_device_mode(hsotg)) {
  if (hsotg->lx_state == DWC2_L2) {
   ret = dwc2_exit_partial_power_down(hsotg, 1);
   if (ret && (ret != -ENOTSUPP))
    dev_err(hsotg->dev,
     "exit power_down failed\n");
  }





  dwc2_hsotg_disconnect(hsotg);
 }
}
