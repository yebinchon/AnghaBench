
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_pdrv_genirq_platdata {TYPE_1__* uioinfo; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int * irqcontrol; int * handler; } ;


 struct uio_pdrv_genirq_platdata* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int uio_unregister_device (TYPE_1__*) ;

__attribute__((used)) static int uio_pdrv_genirq_remove(struct platform_device *pdev)
{
 struct uio_pdrv_genirq_platdata *priv = platform_get_drvdata(pdev);

 uio_unregister_device(priv->uioinfo);
 pm_runtime_disable(&pdev->dev);

 priv->uioinfo->handler = ((void*)0);
 priv->uioinfo->irqcontrol = ((void*)0);

 return 0;
}
