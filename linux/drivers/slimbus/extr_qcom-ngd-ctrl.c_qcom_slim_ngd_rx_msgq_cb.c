
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qcom_slim_ngd_dma_desc {TYPE_1__* desc; int phys; scalar_t__ base; struct qcom_slim_ngd_ctrl* ctrl; } ;
struct qcom_slim_ngd_ctrl {int dma_rx_channel; int dev; } ;
struct TYPE_3__ {void (* callback ) (void*) ;int cookie; struct qcom_slim_ngd_dma_desc* callback_param; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_PREP_INTERRUPT ;
 int SLIM_MSGQ_BUF_LEN ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 TYPE_1__* dmaengine_prep_slave_single (int ,int ,int ,int ,int ) ;
 int dmaengine_submit (TYPE_1__*) ;
 int qcom_slim_ngd_rx (struct qcom_slim_ngd_ctrl*,int *) ;

__attribute__((used)) static void qcom_slim_ngd_rx_msgq_cb(void *args)
{
 struct qcom_slim_ngd_dma_desc *desc = args;
 struct qcom_slim_ngd_ctrl *ctrl = desc->ctrl;

 qcom_slim_ngd_rx(ctrl, (u8 *)desc->base);

 desc->desc = dmaengine_prep_slave_single(ctrl->dma_rx_channel,
     desc->phys, SLIM_MSGQ_BUF_LEN,
     DMA_DEV_TO_MEM,
     DMA_PREP_INTERRUPT);
 if (!desc->desc) {
  dev_err(ctrl->dev, "Unable to prepare rx channel\n");
  return;
 }

 desc->desc->callback = qcom_slim_ngd_rx_msgq_cb;
 desc->desc->callback_param = desc;
 desc->desc->cookie = dmaengine_submit(desc->desc);
 dma_async_issue_pending(ctrl->dma_rx_channel);
}
