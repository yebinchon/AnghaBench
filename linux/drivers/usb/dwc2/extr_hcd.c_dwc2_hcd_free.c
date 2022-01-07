
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ snpsid; } ;
struct TYPE_3__ {scalar_t__ host_dma; } ;
struct dwc2_hsotg {int wkp_timer; int phy_reset_work; scalar_t__ wq_otg; int wf_otg; TYPE_2__ hw_params; struct dwc2_host_chan* status_buf; int status_buf_dma; int dev; TYPE_1__ params; struct dwc2_host_chan** hc_ptr_array; int periodic_sched_queued; int periodic_sched_assigned; int periodic_sched_ready; int periodic_sched_inactive; int non_periodic_sched_active; int non_periodic_sched_waiting; int non_periodic_sched_inactive; } ;
struct dwc2_host_chan {int dummy; } ;


 int DCTL ;
 int DCTL_SFTDISCON ;
 scalar_t__ DWC2_CORE_REV_3_00a ;
 int DWC2_HCD_STATUS_BUF_SIZE ;
 int GAHBCFG ;
 int GAHBCFG_GLBL_INTR_EN ;
 int GINTMSK ;
 int MAX_EPS_CHANNELS ;
 int cancel_work_sync (int *) ;
 int del_timer (int *) ;
 int destroy_workqueue (scalar_t__) ;
 int dev_dbg (int ,char*,...) ;
 int dma_free_coherent (int ,int ,struct dwc2_host_chan*,int ) ;
 int dwc2_qh_list_free (struct dwc2_hsotg*,int *) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;
 int flush_workqueue (scalar_t__) ;
 int kfree (struct dwc2_host_chan*) ;

__attribute__((used)) static void dwc2_hcd_free(struct dwc2_hsotg *hsotg)
{
 u32 ahbcfg;
 u32 dctl;
 int i;

 dev_dbg(hsotg->dev, "DWC OTG HCD FREE\n");


 dwc2_qh_list_free(hsotg, &hsotg->non_periodic_sched_inactive);
 dwc2_qh_list_free(hsotg, &hsotg->non_periodic_sched_waiting);
 dwc2_qh_list_free(hsotg, &hsotg->non_periodic_sched_active);
 dwc2_qh_list_free(hsotg, &hsotg->periodic_sched_inactive);
 dwc2_qh_list_free(hsotg, &hsotg->periodic_sched_ready);
 dwc2_qh_list_free(hsotg, &hsotg->periodic_sched_assigned);
 dwc2_qh_list_free(hsotg, &hsotg->periodic_sched_queued);


 for (i = 0; i < MAX_EPS_CHANNELS; i++) {
  struct dwc2_host_chan *chan = hsotg->hc_ptr_array[i];

  if (chan) {
   dev_dbg(hsotg->dev, "HCD Free channel #%i, chan=%p\n",
    i, chan);
   hsotg->hc_ptr_array[i] = ((void*)0);
   kfree(chan);
  }
 }

 if (hsotg->params.host_dma) {
  if (hsotg->status_buf) {
   dma_free_coherent(hsotg->dev, DWC2_HCD_STATUS_BUF_SIZE,
       hsotg->status_buf,
       hsotg->status_buf_dma);
   hsotg->status_buf = ((void*)0);
  }
 } else {
  kfree(hsotg->status_buf);
  hsotg->status_buf = ((void*)0);
 }

 ahbcfg = dwc2_readl(hsotg, GAHBCFG);


 ahbcfg &= ~GAHBCFG_GLBL_INTR_EN;
 dwc2_writel(hsotg, ahbcfg, GAHBCFG);
 dwc2_writel(hsotg, 0, GINTMSK);

 if (hsotg->hw_params.snpsid >= DWC2_CORE_REV_3_00a) {
  dctl = dwc2_readl(hsotg, DCTL);
  dctl |= DCTL_SFTDISCON;
  dwc2_writel(hsotg, dctl, DCTL);
 }

 if (hsotg->wq_otg) {
  if (!cancel_work_sync(&hsotg->wf_otg))
   flush_workqueue(hsotg->wq_otg);
  destroy_workqueue(hsotg->wq_otg);
 }

 cancel_work_sync(&hsotg->phy_reset_work);

 del_timer(&hsotg->wkp_timer);
}
