
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct aspeed_p2a_ctrl {int miscdev; } ;


 struct aspeed_p2a_ctrl* dev_get_drvdata (int *) ;
 int misc_deregister (int *) ;

__attribute__((used)) static int aspeed_p2a_ctrl_remove(struct platform_device *pdev)
{
 struct aspeed_p2a_ctrl *p2a_ctrl = dev_get_drvdata(&pdev->dev);

 misc_deregister(&p2a_ctrl->miscdev);

 return 0;
}
