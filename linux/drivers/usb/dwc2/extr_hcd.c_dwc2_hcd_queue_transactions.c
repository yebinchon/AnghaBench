
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int non_periodic_sched_active; int dev; } ;
typedef enum dwc2_transaction_type { ____Placeholder_dwc2_transaction_type } dwc2_transaction_type ;


 int DWC2_TRANSACTION_ALL ;
 int DWC2_TRANSACTION_NON_PERIODIC ;
 int DWC2_TRANSACTION_PERIODIC ;
 int GINTMSK ;
 int GINTSTS_NPTXFEMP ;
 int dev_vdbg (int ,char*) ;
 int dwc2_process_non_periodic_channels (struct dwc2_hsotg*) ;
 int dwc2_process_periodic_channels (struct dwc2_hsotg*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;
 int list_empty (int *) ;

void dwc2_hcd_queue_transactions(struct dwc2_hsotg *hsotg,
     enum dwc2_transaction_type tr_type)
{




 if (tr_type == DWC2_TRANSACTION_PERIODIC ||
     tr_type == DWC2_TRANSACTION_ALL)
  dwc2_process_periodic_channels(hsotg);


 if (tr_type == DWC2_TRANSACTION_NON_PERIODIC ||
     tr_type == DWC2_TRANSACTION_ALL) {
  if (!list_empty(&hsotg->non_periodic_sched_active)) {
   dwc2_process_non_periodic_channels(hsotg);
  } else {




   u32 gintmsk = dwc2_readl(hsotg, GINTMSK);

   gintmsk &= ~GINTSTS_NPTXFEMP;
   dwc2_writel(hsotg, gintmsk, GINTMSK);
  }
 }
}
