
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_slim_ctrl {int rxwq; int ctrl; } ;
struct platform_device {int dev; } ;


 int destroy_workqueue (int ) ;
 struct qcom_slim_ctrl* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int slim_unregister_controller (int *) ;

__attribute__((used)) static int qcom_slim_remove(struct platform_device *pdev)
{
 struct qcom_slim_ctrl *ctrl = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);
 slim_unregister_controller(&ctrl->ctrl);
 destroy_workqueue(ctrl->rxwq);
 return 0;
}
