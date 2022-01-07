
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dev; } ;
struct omap2_mcspi {int dev; } ;


 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_dont_use_autosuspend (int ) ;
 int pm_runtime_put_sync (int ) ;
 struct omap2_mcspi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int omap2_mcspi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct omap2_mcspi *mcspi = spi_master_get_devdata(master);

 pm_runtime_dont_use_autosuspend(mcspi->dev);
 pm_runtime_put_sync(mcspi->dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
