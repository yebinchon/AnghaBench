
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qcom_slim_ngd_dma_desc {void* base; TYPE_1__* desc; scalar_t__ phys; struct qcom_slim_ngd_ctrl* ctrl; } ;
struct qcom_slim_ngd_ctrl {void* tx_base; int tx_buf_lock; int dma_tx_channel; int dev; scalar_t__ tx_phys_base; struct qcom_slim_ngd_dma_desc* txdesc; } ;
struct TYPE_3__ {int cookie; struct qcom_slim_ngd_dma_desc* callback_param; int callback; } ;


 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int EINVAL ;
 int SLIM_MSGQ_BUF_LEN ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 TYPE_1__* dmaengine_prep_slave_single (int ,scalar_t__,int,int ,int ) ;
 int dmaengine_submit (TYPE_1__*) ;
 int qcom_slim_ngd_tx_msg_dma_cb ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int qcom_slim_ngd_tx_msg_post(struct qcom_slim_ngd_ctrl *ctrl,
         void *buf, int len)
{
 struct qcom_slim_ngd_dma_desc *desc;
 unsigned long flags;
 int index, offset;

 spin_lock_irqsave(&ctrl->tx_buf_lock, flags);
 offset = buf - ctrl->tx_base;
 index = offset/SLIM_MSGQ_BUF_LEN;

 desc = &ctrl->txdesc[index];
 desc->phys = ctrl->tx_phys_base + offset;
 desc->base = ctrl->tx_base + offset;
 desc->ctrl = ctrl;
 len = (len + 3) & 0xfc;

 desc->desc = dmaengine_prep_slave_single(ctrl->dma_tx_channel,
      desc->phys, len,
      DMA_MEM_TO_DEV,
      DMA_PREP_INTERRUPT);
 if (!desc->desc) {
  dev_err(ctrl->dev, "unable to prepare channel\n");
  spin_unlock_irqrestore(&ctrl->tx_buf_lock, flags);
  return -EINVAL;
 }

 desc->desc->callback = qcom_slim_ngd_tx_msg_dma_cb;
 desc->desc->callback_param = desc;
 desc->desc->cookie = dmaengine_submit(desc->desc);
 dma_async_issue_pending(ctrl->dma_tx_channel);
 spin_unlock_irqrestore(&ctrl->tx_buf_lock, flags);

 return 0;
}
