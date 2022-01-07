
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcnss_ctrl {int probe_work; } ;
struct rpmsg_device {int dev; } ;


 int cancel_work_sync (int *) ;
 struct wcnss_ctrl* dev_get_drvdata (int *) ;
 int of_platform_depopulate (int *) ;

__attribute__((used)) static void wcnss_ctrl_remove(struct rpmsg_device *rpdev)
{
 struct wcnss_ctrl *wcnss = dev_get_drvdata(&rpdev->dev);

 cancel_work_sync(&wcnss->probe_work);
 of_platform_depopulate(&rpdev->dev);
}
