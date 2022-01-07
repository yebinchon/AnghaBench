
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ci_hdrc_usb2_priv {int clk; int ci_pdev; } ;


 int ci_hdrc_remove_device (int ) ;
 int clk_disable_unprepare (int ) ;
 struct ci_hdrc_usb2_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int ci_hdrc_usb2_remove(struct platform_device *pdev)
{
 struct ci_hdrc_usb2_priv *priv = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);
 ci_hdrc_remove_device(priv->ci_pdev);
 clk_disable_unprepare(priv->clk);

 return 0;
}
