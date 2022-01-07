
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwdt_priv {int wdev; } ;
struct platform_device {int dev; } ;


 struct rwdt_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static int rwdt_remove(struct platform_device *pdev)
{
 struct rwdt_priv *priv = platform_get_drvdata(pdev);

 watchdog_unregister_device(&priv->wdev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
