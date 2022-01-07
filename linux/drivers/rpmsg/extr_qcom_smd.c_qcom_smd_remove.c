
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dev_warn (int *,char*,int) ;
 int device_for_each_child (int *,int *,int ) ;
 int qcom_smd_remove_edge ;

__attribute__((used)) static int qcom_smd_remove(struct platform_device *pdev)
{
 int ret;

 ret = device_for_each_child(&pdev->dev, ((void*)0), qcom_smd_remove_edge);
 if (ret)
  dev_warn(&pdev->dev, "can't remove smd device: %d\n", ret);

 return ret;
}
