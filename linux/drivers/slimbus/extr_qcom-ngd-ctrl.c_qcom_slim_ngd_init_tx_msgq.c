
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_slim_ngd_ctrl {int dma_tx_channel; int tx_buf_lock; scalar_t__ tx_head; scalar_t__ tx_tail; int tx_base; int tx_phys_base; struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int QCOM_SLIM_NGD_DESC_NUM ;
 int SLIM_MSGQ_BUF_LEN ;
 int dev_err (struct device*,char*) ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int dma_release_channel (int ) ;
 int dma_request_slave_channel (struct device*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int qcom_slim_ngd_init_tx_msgq(struct qcom_slim_ngd_ctrl *ctrl)
{
 struct device *dev = ctrl->dev;
 unsigned long flags;
 int ret = 0;
 int size;

 ctrl->dma_tx_channel = dma_request_slave_channel(dev, "tx");
 if (!ctrl->dma_tx_channel) {
  dev_err(dev, "Failed to request dma channels");
  return -EINVAL;
 }

 size = ((QCOM_SLIM_NGD_DESC_NUM + 1) * SLIM_MSGQ_BUF_LEN);
 ctrl->tx_base = dma_alloc_coherent(dev, size, &ctrl->tx_phys_base,
        GFP_KERNEL);
 if (!ctrl->tx_base) {
  dev_err(dev, "dma_alloc_coherent failed\n");
  ret = -EINVAL;
  goto rel_tx;
 }

 spin_lock_irqsave(&ctrl->tx_buf_lock, flags);
 ctrl->tx_tail = 0;
 ctrl->tx_head = 0;
 spin_unlock_irqrestore(&ctrl->tx_buf_lock, flags);

 return 0;
rel_tx:
 dma_release_channel(ctrl->dma_tx_channel);
 return ret;
}
