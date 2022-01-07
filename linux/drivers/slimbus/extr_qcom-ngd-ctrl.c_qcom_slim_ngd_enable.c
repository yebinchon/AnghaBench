
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qmi_comp; } ;
struct qcom_slim_ngd_ctrl {int ctrl; int dev; TYPE_1__ qmi; int state; } ;


 int complete (int *) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*) ;
 int pm_runtime_enabled (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put (int ) ;
 int pm_runtime_resume (int ) ;
 int pm_runtime_suspended (int ) ;
 int qcom_slim_ngd_runtime_resume (int ) ;
 int qcom_slim_qmi_exit (struct qcom_slim_ngd_ctrl*) ;
 int qcom_slim_qmi_init (struct qcom_slim_ngd_ctrl*,int) ;
 int slim_register_controller (int *) ;
 int slim_unregister_controller (int *) ;

__attribute__((used)) static int qcom_slim_ngd_enable(struct qcom_slim_ngd_ctrl *ctrl, bool enable)
{
 if (enable) {
  int ret = qcom_slim_qmi_init(ctrl, 0);

  if (ret) {
   dev_err(ctrl->dev, "qmi init fail, ret:%d, state:%d\n",
    ret, ctrl->state);
   return ret;
  }

  complete(&ctrl->qmi.qmi_comp);
  if (!pm_runtime_enabled(ctrl->dev) ||
    !pm_runtime_suspended(ctrl->dev))
   qcom_slim_ngd_runtime_resume(ctrl->dev);
  else
   pm_runtime_resume(ctrl->dev);
  pm_runtime_mark_last_busy(ctrl->dev);
  pm_runtime_put(ctrl->dev);

  ret = slim_register_controller(&ctrl->ctrl);
  if (ret) {
   dev_err(ctrl->dev, "error adding slim controller\n");
   return ret;
  }

  dev_info(ctrl->dev, "SLIM controller Registered\n");
 } else {
  qcom_slim_qmi_exit(ctrl);
  slim_unregister_controller(&ctrl->ctrl);
 }

 return 0;
}
