
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_slim_ngd_ctrl {scalar_t__ state; int dev; } ;
struct device {int dummy; } ;


 scalar_t__ QCOM_SLIM_NGD_CTRL_ASLEEP ;
 scalar_t__ QCOM_SLIM_NGD_CTRL_AWAKE ;
 scalar_t__ QCOM_SLIM_NGD_CTRL_DOWN ;
 int dev_err (int ,char*) ;
 struct qcom_slim_ngd_ctrl* dev_get_drvdata (struct device*) ;
 int qcom_slim_ngd_power_up (struct qcom_slim_ngd_ctrl*) ;

__attribute__((used)) static int qcom_slim_ngd_runtime_resume(struct device *dev)
{
 struct qcom_slim_ngd_ctrl *ctrl = dev_get_drvdata(dev);
 int ret = 0;

 if (ctrl->state >= QCOM_SLIM_NGD_CTRL_ASLEEP)
  ret = qcom_slim_ngd_power_up(ctrl);
 if (ret) {

  if (ctrl->state != QCOM_SLIM_NGD_CTRL_DOWN)
   ctrl->state = QCOM_SLIM_NGD_CTRL_ASLEEP;
  else
   dev_err(ctrl->dev, "HW wakeup attempt during SSR\n");
 } else {
  ctrl->state = QCOM_SLIM_NGD_CTRL_AWAKE;
 }

 return 0;
}
