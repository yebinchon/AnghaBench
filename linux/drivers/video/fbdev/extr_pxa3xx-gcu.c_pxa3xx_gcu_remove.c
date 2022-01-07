
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa3xx_gcu_priv {int shared_phys; int shared; int misc_dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int SHARED_SIZE ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int misc_deregister (int *) ;
 struct pxa3xx_gcu_priv* platform_get_drvdata (struct platform_device*) ;
 int pxa3xx_gcu_free_buffers (struct device*,struct pxa3xx_gcu_priv*) ;
 int pxa3xx_gcu_wait_idle (struct pxa3xx_gcu_priv*) ;

__attribute__((used)) static int pxa3xx_gcu_remove(struct platform_device *pdev)
{
 struct pxa3xx_gcu_priv *priv = platform_get_drvdata(pdev);
 struct device *dev = &pdev->dev;

 pxa3xx_gcu_wait_idle(priv);
 misc_deregister(&priv->misc_dev);
 dma_free_coherent(dev, SHARED_SIZE, priv->shared, priv->shared_phys);
 pxa3xx_gcu_free_buffers(dev, priv);

 return 0;
}
