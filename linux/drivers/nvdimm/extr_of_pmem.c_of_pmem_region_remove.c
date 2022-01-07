
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct of_pmem_private {int bus; } ;


 int kfree (struct of_pmem_private*) ;
 int nvdimm_bus_unregister (int ) ;
 struct of_pmem_private* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int of_pmem_region_remove(struct platform_device *pdev)
{
 struct of_pmem_private *priv = platform_get_drvdata(pdev);

 nvdimm_bus_unregister(priv->bus);
 kfree(priv);

 return 0;
}
