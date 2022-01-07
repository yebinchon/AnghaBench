
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sflash_data {int irq; } ;
struct spi_master {int dummy; } ;
struct platform_device {int dev; } ;


 int free_irq (int ,struct tegra_sflash_data*) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;
 struct tegra_sflash_data* spi_master_get_devdata (struct spi_master*) ;
 int tegra_sflash_runtime_suspend (int *) ;

__attribute__((used)) static int tegra_sflash_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct tegra_sflash_data *tsd = spi_master_get_devdata(master);

 free_irq(tsd->irq, tsd);

 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  tegra_sflash_runtime_suspend(&pdev->dev);

 return 0;
}
