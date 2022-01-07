
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int dev; } ;


 int HPRT0 ;
 int dev_dbg (int ,char*) ;
 int dwc2_disable_host_interrupts (struct dwc2_hsotg*) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;

void dwc2_hcd_stop(struct dwc2_hsotg *hsotg)
{
 dev_dbg(hsotg->dev, "DWC OTG HCD STOP\n");
 dwc2_disable_host_interrupts(hsotg);


 dev_dbg(hsotg->dev, "PortPower off\n");
 dwc2_writel(hsotg, 0, HPRT0);
}
