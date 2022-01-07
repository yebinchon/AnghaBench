
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct omap8250_priv {int pm_qos_request; int line; } ;


 int device_init_wakeup (int *,int) ;
 struct omap8250_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_qos_remove_request (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_dont_use_autosuspend (int *) ;
 int pm_runtime_put_sync (int *) ;
 int serial8250_unregister_port (int ) ;

__attribute__((used)) static int omap8250_remove(struct platform_device *pdev)
{
 struct omap8250_priv *priv = platform_get_drvdata(pdev);

 pm_runtime_dont_use_autosuspend(&pdev->dev);
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 serial8250_unregister_port(priv->line);
 pm_qos_remove_request(&priv->pm_qos_request);
 device_init_wakeup(&pdev->dev, 0);
 return 0;
}
