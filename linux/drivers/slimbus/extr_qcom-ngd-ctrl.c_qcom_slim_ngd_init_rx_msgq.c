
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_slim_ngd_ctrl {int dma_rx_channel; int rx_phys_base; int rx_base; struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QCOM_SLIM_NGD_DESC_NUM ;
 int SLIM_MSGQ_BUF_LEN ;
 int dev_err (struct device*,char*,...) ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int dma_free_coherent (struct device*,int,int ,int ) ;
 int dma_release_channel (int ) ;
 int dma_request_slave_channel (struct device*,char*) ;
 int qcom_slim_ngd_post_rx_msgq (struct qcom_slim_ngd_ctrl*) ;

__attribute__((used)) static int qcom_slim_ngd_init_rx_msgq(struct qcom_slim_ngd_ctrl *ctrl)
{
 struct device *dev = ctrl->dev;
 int ret, size;

 ctrl->dma_rx_channel = dma_request_slave_channel(dev, "rx");
 if (!ctrl->dma_rx_channel) {
  dev_err(dev, "Failed to request dma channels");
  return -EINVAL;
 }

 size = QCOM_SLIM_NGD_DESC_NUM * SLIM_MSGQ_BUF_LEN;
 ctrl->rx_base = dma_alloc_coherent(dev, size, &ctrl->rx_phys_base,
        GFP_KERNEL);
 if (!ctrl->rx_base) {
  dev_err(dev, "dma_alloc_coherent failed\n");
  ret = -ENOMEM;
  goto rel_rx;
 }

 ret = qcom_slim_ngd_post_rx_msgq(ctrl);
 if (ret) {
  dev_err(dev, "post_rx_msgq() failed 0x%x\n", ret);
  goto rx_post_err;
 }

 return 0;

rx_post_err:
 dma_free_coherent(dev, size, ctrl->rx_base, ctrl->rx_phys_base);
rel_rx:
 dma_release_channel(ctrl->dma_rx_channel);
 return ret;
}
