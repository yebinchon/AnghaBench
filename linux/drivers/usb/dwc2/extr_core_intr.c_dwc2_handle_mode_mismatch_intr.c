
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int dev; } ;


 int GINTSTS ;
 int GINTSTS_MODEMIS ;
 int dev_warn (int ,char*,char*) ;
 scalar_t__ dwc2_is_host_mode (struct dwc2_hsotg*) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;

__attribute__((used)) static void dwc2_handle_mode_mismatch_intr(struct dwc2_hsotg *hsotg)
{

 dwc2_writel(hsotg, GINTSTS_MODEMIS, GINTSTS);

 dev_warn(hsotg->dev, "Mode Mismatch Interrupt: currently in %s mode\n",
   dwc2_is_host_mode(hsotg) ? "Host" : "Device");
}
