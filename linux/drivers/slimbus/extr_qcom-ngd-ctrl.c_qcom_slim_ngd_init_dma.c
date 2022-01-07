
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_slim_ngd_ctrl {int dev; } ;


 int dev_err (int ,char*) ;
 int qcom_slim_ngd_init_rx_msgq (struct qcom_slim_ngd_ctrl*) ;
 int qcom_slim_ngd_init_tx_msgq (struct qcom_slim_ngd_ctrl*) ;

__attribute__((used)) static int qcom_slim_ngd_init_dma(struct qcom_slim_ngd_ctrl *ctrl)
{
 int ret = 0;

 ret = qcom_slim_ngd_init_rx_msgq(ctrl);
 if (ret) {
  dev_err(ctrl->dev, "rx dma init failed\n");
  return ret;
 }

 ret = qcom_slim_ngd_init_tx_msgq(ctrl);
 if (ret)
  dev_err(ctrl->dev, "tx dma init failed\n");

 return ret;
}
