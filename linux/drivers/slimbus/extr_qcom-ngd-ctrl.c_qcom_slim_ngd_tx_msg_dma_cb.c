
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_slim_ngd_dma_desc {int * comp; struct qcom_slim_ngd_ctrl* ctrl; } ;
struct qcom_slim_ngd_ctrl {int tx_head; int tx_buf_lock; } ;


 int QCOM_SLIM_NGD_DESC_NUM ;
 int complete (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qcom_slim_ngd_tx_msg_dma_cb(void *args)
{
 struct qcom_slim_ngd_dma_desc *desc = args;
 struct qcom_slim_ngd_ctrl *ctrl = desc->ctrl;
 unsigned long flags;

 spin_lock_irqsave(&ctrl->tx_buf_lock, flags);

 if (desc->comp) {
  complete(desc->comp);
  desc->comp = ((void*)0);
 }

 ctrl->tx_head = (ctrl->tx_head + 1) % QCOM_SLIM_NGD_DESC_NUM;
 spin_unlock_irqrestore(&ctrl->tx_buf_lock, flags);
}
