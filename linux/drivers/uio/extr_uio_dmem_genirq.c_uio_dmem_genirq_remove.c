
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_dmem_genirq_platdata {struct uio_dmem_genirq_platdata* uioinfo; int * irqcontrol; int * handler; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int kfree (struct uio_dmem_genirq_platdata*) ;
 struct uio_dmem_genirq_platdata* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int uio_unregister_device (struct uio_dmem_genirq_platdata*) ;

__attribute__((used)) static int uio_dmem_genirq_remove(struct platform_device *pdev)
{
 struct uio_dmem_genirq_platdata *priv = platform_get_drvdata(pdev);

 uio_unregister_device(priv->uioinfo);
 pm_runtime_disable(&pdev->dev);

 priv->uioinfo->handler = ((void*)0);
 priv->uioinfo->irqcontrol = ((void*)0);


 if (pdev->dev.of_node)
  kfree(priv->uioinfo);

 kfree(priv);
 return 0;
}
