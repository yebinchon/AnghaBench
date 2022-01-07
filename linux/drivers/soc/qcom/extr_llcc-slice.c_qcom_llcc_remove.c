
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ENODEV ;
 int ERR_PTR (int ) ;
 int drv_data ;

int qcom_llcc_remove(struct platform_device *pdev)
{

 drv_data = ERR_PTR(-ENODEV);
 return 0;
}
