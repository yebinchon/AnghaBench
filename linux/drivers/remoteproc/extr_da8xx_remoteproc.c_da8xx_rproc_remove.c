
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {scalar_t__ priv; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct da8xx_rproc {int irq; } ;


 int disable_irq (int ) ;
 int of_reserved_mem_device_release (struct device*) ;
 struct rproc* platform_get_drvdata (struct platform_device*) ;
 int rproc_del (struct rproc*) ;
 int rproc_free (struct rproc*) ;

__attribute__((used)) static int da8xx_rproc_remove(struct platform_device *pdev)
{
 struct rproc *rproc = platform_get_drvdata(pdev);
 struct da8xx_rproc *drproc = (struct da8xx_rproc *)rproc->priv;
 struct device *dev = &pdev->dev;






 disable_irq(drproc->irq);

 rproc_del(rproc);
 rproc_free(rproc);
 if (dev->of_node)
  of_reserved_mem_device_release(dev);

 return 0;
}
