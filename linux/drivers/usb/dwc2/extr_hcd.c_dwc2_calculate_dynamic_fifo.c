
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dwc2_hw_params {scalar_t__ total_fifo_size; scalar_t__ host_channels; } ;
struct dwc2_core_params {scalar_t__ host_rx_fifo_size; scalar_t__ host_nperio_tx_fifo_size; scalar_t__ host_perio_tx_fifo_size; } ;
struct dwc2_hsotg {int dev; struct dwc2_hw_params hw_params; struct dwc2_core_params params; } ;


 int dev_err (int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void dwc2_calculate_dynamic_fifo(struct dwc2_hsotg *hsotg)
{
 struct dwc2_core_params *params = &hsotg->params;
 struct dwc2_hw_params *hw = &hsotg->hw_params;
 u32 rxfsiz, nptxfsiz, ptxfsiz, total_fifo_size;

 total_fifo_size = hw->total_fifo_size;
 rxfsiz = params->host_rx_fifo_size;
 nptxfsiz = params->host_nperio_tx_fifo_size;
 ptxfsiz = params->host_perio_tx_fifo_size;







 if (total_fifo_size < (rxfsiz + nptxfsiz + ptxfsiz)) {






  rxfsiz = 516 + hw->host_channels;






  nptxfsiz = 256;






  ptxfsiz = 768;

  params->host_rx_fifo_size = rxfsiz;
  params->host_nperio_tx_fifo_size = nptxfsiz;
  params->host_perio_tx_fifo_size = ptxfsiz;
 }
 if (unlikely(total_fifo_size < (rxfsiz + nptxfsiz + ptxfsiz)))
  dev_err(hsotg->dev, "invalid fifo sizes\n");
}
