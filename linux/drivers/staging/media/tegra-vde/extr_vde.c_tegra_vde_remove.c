
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_vde {int iram_pool; scalar_t__ iram; int miscdev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int gen_pool_free (int ,unsigned long,int ) ;
 int gen_pool_size (int ) ;
 int misc_deregister (int *) ;
 struct tegra_vde* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_dont_use_autosuspend (struct device*) ;
 int pm_runtime_enabled (struct device*) ;
 int tegra_vde_dmabuf_cache_unmap_all (struct tegra_vde*) ;
 int tegra_vde_iommu_deinit (struct tegra_vde*) ;
 int tegra_vde_runtime_suspend (struct device*) ;

__attribute__((used)) static int tegra_vde_remove(struct platform_device *pdev)
{
 struct tegra_vde *vde = platform_get_drvdata(pdev);
 struct device *dev = &pdev->dev;
 int err;

 if (!pm_runtime_enabled(dev)) {
  err = tegra_vde_runtime_suspend(dev);
  if (err)
   return err;
 }

 pm_runtime_dont_use_autosuspend(dev);
 pm_runtime_disable(dev);

 misc_deregister(&vde->miscdev);

 tegra_vde_dmabuf_cache_unmap_all(vde);
 tegra_vde_iommu_deinit(vde);

 gen_pool_free(vde->iram_pool, (unsigned long)vde->iram,
        gen_pool_size(vde->iram_pool));

 return 0;
}
