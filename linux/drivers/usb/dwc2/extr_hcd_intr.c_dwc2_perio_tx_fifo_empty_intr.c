
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int dev; } ;


 int DWC2_TRANSACTION_PERIODIC ;
 scalar_t__ dbg_perio () ;
 int dev_vdbg (int ,char*) ;
 int dwc2_hcd_queue_transactions (struct dwc2_hsotg*,int ) ;

__attribute__((used)) static void dwc2_perio_tx_fifo_empty_intr(struct dwc2_hsotg *hsotg)
{
 if (dbg_perio())
  dev_vdbg(hsotg->dev, "--Periodic TxFIFO Empty Interrupt--\n");
 dwc2_hcd_queue_transactions(hsotg, DWC2_TRANSACTION_PERIODIC);
}
