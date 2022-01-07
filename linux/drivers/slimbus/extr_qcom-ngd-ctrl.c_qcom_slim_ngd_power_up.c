
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int qmi_comp; } ;
struct qcom_slim_ngd_ctrl {int state; int ver; int dev; int reconf; scalar_t__ base; TYPE_1__ qmi; struct qcom_slim_ngd* ngd; } ;
struct qcom_slim_ngd {scalar_t__ base; } ;
typedef enum qcom_slim_ngd_state { ____Placeholder_qcom_slim_ngd_state } qcom_slim_ngd_state ;


 int DEF_NGD_INT_MASK ;
 int EREMOTEIO ;
 int ETIMEDOUT ;
 int HZ ;
 scalar_t__ NGD_INT_EN ;
 int NGD_LADDR ;
 scalar_t__ NGD_RX_MSGQ_CFG ;
 scalar_t__ NGD_STATUS ;
 scalar_t__ QCOM_SLIM_NGD_CTRL_ASLEEP ;
 int QCOM_SLIM_NGD_CTRL_AWAKE ;
 scalar_t__ QCOM_SLIM_NGD_CTRL_DOWN ;
 int SLIM_RX_MSGQ_TIMEOUT_VAL ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*) ;
 int qcom_slim_ngd_setup (struct qcom_slim_ngd_ctrl*) ;
 int qcom_slim_qmi_power_request (struct qcom_slim_ngd_ctrl*,int) ;
 void* readl_relaxed (scalar_t__) ;
 int wait_for_completion_timeout (int *,int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int qcom_slim_ngd_power_up(struct qcom_slim_ngd_ctrl *ctrl)
{
 enum qcom_slim_ngd_state cur_state = ctrl->state;
 struct qcom_slim_ngd *ngd = ctrl->ngd;
 u32 laddr, rx_msgq;
 int timeout, ret = 0;

 if (ctrl->state == QCOM_SLIM_NGD_CTRL_DOWN) {
  timeout = wait_for_completion_timeout(&ctrl->qmi.qmi_comp, HZ);
  if (!timeout)
   return -EREMOTEIO;
 }

 if (ctrl->state == QCOM_SLIM_NGD_CTRL_ASLEEP ||
  ctrl->state == QCOM_SLIM_NGD_CTRL_DOWN) {
  ret = qcom_slim_qmi_power_request(ctrl, 1);
  if (ret) {
   dev_err(ctrl->dev, "SLIM QMI power request failed:%d\n",
     ret);
   return ret;
  }
 }

 ctrl->ver = readl_relaxed(ctrl->base);

 ctrl->ver >>= 16;

 laddr = readl_relaxed(ngd->base + NGD_STATUS);
 if (laddr & NGD_LADDR) {




  if (cur_state == QCOM_SLIM_NGD_CTRL_AWAKE) {
   dev_info(ctrl->dev, "Subsys restart: ADSP active framer\n");
   return 0;
  }
  return 0;
 }

 writel_relaxed(DEF_NGD_INT_MASK, ngd->base + NGD_INT_EN);
 rx_msgq = readl_relaxed(ngd->base + NGD_RX_MSGQ_CFG);

 writel_relaxed(rx_msgq|SLIM_RX_MSGQ_TIMEOUT_VAL,
    ngd->base + NGD_RX_MSGQ_CFG);
 qcom_slim_ngd_setup(ctrl);

 timeout = wait_for_completion_timeout(&ctrl->reconf, HZ);
 if (!timeout) {
  dev_err(ctrl->dev, "capability exchange timed-out\n");
  return -ETIMEDOUT;
 }

 return 0;
}
