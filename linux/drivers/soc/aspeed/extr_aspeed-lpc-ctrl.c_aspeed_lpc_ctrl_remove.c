
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct aspeed_lpc_ctrl {int clk; int miscdev; } ;


 int clk_disable_unprepare (int ) ;
 struct aspeed_lpc_ctrl* dev_get_drvdata (int *) ;
 int misc_deregister (int *) ;

__attribute__((used)) static int aspeed_lpc_ctrl_remove(struct platform_device *pdev)
{
 struct aspeed_lpc_ctrl *lpc_ctrl = dev_get_drvdata(&pdev->dev);

 misc_deregister(&lpc_ctrl->miscdev);
 clk_disable_unprepare(lpc_ctrl->clk);

 return 0;
}
