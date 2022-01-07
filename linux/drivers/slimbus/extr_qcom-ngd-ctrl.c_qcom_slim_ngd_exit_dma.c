
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_slim_ngd_ctrl {int * dma_rx_channel; int * dma_tx_channel; } ;


 int dma_release_channel (int *) ;
 int dmaengine_terminate_sync (int *) ;

__attribute__((used)) static int qcom_slim_ngd_exit_dma(struct qcom_slim_ngd_ctrl *ctrl)
{
 if (ctrl->dma_rx_channel) {
  dmaengine_terminate_sync(ctrl->dma_rx_channel);
  dma_release_channel(ctrl->dma_rx_channel);
 }

 if (ctrl->dma_tx_channel) {
  dmaengine_terminate_sync(ctrl->dma_tx_channel);
  dma_release_channel(ctrl->dma_tx_channel);
 }

 ctrl->dma_tx_channel = ctrl->dma_rx_channel = ((void*)0);

 return 0;
}
