
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_slim_ngd_ctrl {int * ngd; scalar_t__ mwq; int qmi; } ;
struct platform_device {int dev; } ;


 int destroy_workqueue (scalar_t__) ;
 int kfree (int *) ;
 struct qcom_slim_ngd_ctrl* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int qcom_slim_ngd_enable (struct qcom_slim_ngd_ctrl*,int) ;
 int qcom_slim_ngd_exit_dma (struct qcom_slim_ngd_ctrl*) ;
 int qcom_slim_ngd_qmi_svc_event_deinit (int *) ;

__attribute__((used)) static int qcom_slim_ngd_remove(struct platform_device *pdev)
{
 struct qcom_slim_ngd_ctrl *ctrl = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);
 qcom_slim_ngd_enable(ctrl, 0);
 qcom_slim_ngd_exit_dma(ctrl);
 qcom_slim_ngd_qmi_svc_event_deinit(&ctrl->qmi);
 if (ctrl->mwq)
  destroy_workqueue(ctrl->mwq);

 kfree(ctrl->ngd);
 ctrl->ngd = ((void*)0);
 return 0;
}
