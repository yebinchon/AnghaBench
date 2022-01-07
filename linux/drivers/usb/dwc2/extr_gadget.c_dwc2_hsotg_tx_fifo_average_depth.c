
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int dummy; } ;


 int dwc2_hsotg_tx_fifo_count (struct dwc2_hsotg*) ;
 int dwc2_hsotg_tx_fifo_total_depth (struct dwc2_hsotg*) ;

int dwc2_hsotg_tx_fifo_average_depth(struct dwc2_hsotg *hsotg)
{
 int tx_fifo_count;
 int tx_fifo_depth;

 tx_fifo_depth = dwc2_hsotg_tx_fifo_total_depth(hsotg);

 tx_fifo_count = dwc2_hsotg_tx_fifo_count(hsotg);

 if (!tx_fifo_count)
  return tx_fifo_depth;
 else
  return tx_fifo_depth / tx_fifo_count;
}
