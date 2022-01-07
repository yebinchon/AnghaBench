
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dev_attr_state ;
 int device_remove_file (int *,int *) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int poweroff_seq (struct platform_device*) ;

__attribute__((used)) static int arche_apb_ctrl_remove(struct platform_device *pdev)
{
 device_remove_file(&pdev->dev, &dev_attr_state);
 poweroff_seq(pdev);
 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
