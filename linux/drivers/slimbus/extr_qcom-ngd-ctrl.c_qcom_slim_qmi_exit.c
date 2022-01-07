
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * handle; } ;
struct qcom_slim_ngd_ctrl {TYPE_1__ qmi; int dev; } ;


 int devm_kfree (int ,int *) ;
 int qmi_handle_release (int *) ;

__attribute__((used)) static void qcom_slim_qmi_exit(struct qcom_slim_ngd_ctrl *ctrl)
{
 if (!ctrl->qmi.handle)
  return;

 qmi_handle_release(ctrl->qmi.handle);
 devm_kfree(ctrl->dev, ctrl->qmi.handle);
 ctrl->qmi.handle = ((void*)0);
}
