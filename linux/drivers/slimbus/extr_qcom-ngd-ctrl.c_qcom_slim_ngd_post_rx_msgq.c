
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qcom_slim_ngd_dma_desc {TYPE_1__* desc; scalar_t__ phys; scalar_t__ base; struct qcom_slim_ngd_ctrl* ctrl; } ;
struct qcom_slim_ngd_ctrl {int dma_rx_channel; int dev; scalar_t__ rx_base; scalar_t__ rx_phys_base; struct qcom_slim_ngd_dma_desc* rx_desc; } ;
struct TYPE_3__ {int cookie; struct qcom_slim_ngd_dma_desc* callback_param; int callback; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_PREP_INTERRUPT ;
 int EINVAL ;
 int QCOM_SLIM_NGD_DESC_NUM ;
 int SLIM_MSGQ_BUF_LEN ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 TYPE_1__* dmaengine_prep_slave_single (int ,scalar_t__,int,int ,int ) ;
 int dmaengine_submit (TYPE_1__*) ;
 int qcom_slim_ngd_rx_msgq_cb ;

__attribute__((used)) static int qcom_slim_ngd_post_rx_msgq(struct qcom_slim_ngd_ctrl *ctrl)
{
 struct qcom_slim_ngd_dma_desc *desc;
 int i;

 for (i = 0; i < QCOM_SLIM_NGD_DESC_NUM; i++) {
  desc = &ctrl->rx_desc[i];
  desc->phys = ctrl->rx_phys_base + i * SLIM_MSGQ_BUF_LEN;
  desc->ctrl = ctrl;
  desc->base = ctrl->rx_base + i * SLIM_MSGQ_BUF_LEN;
  desc->desc = dmaengine_prep_slave_single(ctrl->dma_rx_channel,
      desc->phys, SLIM_MSGQ_BUF_LEN,
      DMA_DEV_TO_MEM,
      DMA_PREP_INTERRUPT);
  if (!desc->desc) {
   dev_err(ctrl->dev, "Unable to prepare rx channel\n");
   return -EINVAL;
  }

  desc->desc->callback = qcom_slim_ngd_rx_msgq_cb;
  desc->desc->callback_param = desc;
  desc->desc->cookie = dmaengine_submit(desc->desc);
 }
 dma_async_issue_pending(ctrl->dma_rx_channel);

 return 0;
}
