
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_device {int dev; } ;


 int of_platform_depopulate (int *) ;

__attribute__((used)) static void qcom_smd_rpm_remove(struct rpmsg_device *rpdev)
{
 of_platform_depopulate(&rpdev->dev);
}
