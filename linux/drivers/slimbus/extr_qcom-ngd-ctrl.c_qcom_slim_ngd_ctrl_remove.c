
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int platform_driver_unregister (int *) ;
 int qcom_slim_ngd_driver ;

__attribute__((used)) static int qcom_slim_ngd_ctrl_remove(struct platform_device *pdev)
{
 platform_driver_unregister(&qcom_slim_ngd_driver);

 return 0;
}
