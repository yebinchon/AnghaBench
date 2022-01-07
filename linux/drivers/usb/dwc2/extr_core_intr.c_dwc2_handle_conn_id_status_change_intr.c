
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int lock; int wf_otg; scalar_t__ wq_otg; int dev; } ;


 int GINTMSK ;
 int GINTSTS ;
 int GINTSTS_CONIDSTSCHNG ;
 int GINTSTS_SOF ;
 int dev_dbg (int ,char*,char*) ;
 scalar_t__ dwc2_is_host_mode (struct dwc2_hsotg*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;
 int queue_work (scalar_t__,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void dwc2_handle_conn_id_status_change_intr(struct dwc2_hsotg *hsotg)
{
 u32 gintmsk;


 dwc2_writel(hsotg, GINTSTS_CONIDSTSCHNG, GINTSTS);


 gintmsk = dwc2_readl(hsotg, GINTMSK);
 gintmsk &= ~GINTSTS_SOF;
 dwc2_writel(hsotg, gintmsk, GINTMSK);

 dev_dbg(hsotg->dev, " ++Connector ID Status Change Interrupt++  (%s)\n",
  dwc2_is_host_mode(hsotg) ? "Host" : "Device");






 if (hsotg->wq_otg) {
  spin_unlock(&hsotg->lock);
  queue_work(hsotg->wq_otg, &hsotg->wf_otg);
  spin_lock(&hsotg->lock);
 }
}
