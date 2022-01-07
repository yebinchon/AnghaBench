
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dev; } ;
struct mxs_ssp {int dmach; } ;
struct mxs_spi {struct mxs_ssp ssp; } ;


 int dma_release_channel (int ) ;
 int mxs_spi_runtime_suspend (int *) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;
 struct mxs_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int mxs_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master;
 struct mxs_spi *spi;
 struct mxs_ssp *ssp;

 master = platform_get_drvdata(pdev);
 spi = spi_master_get_devdata(master);
 ssp = &spi->ssp;

 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  mxs_spi_runtime_suspend(&pdev->dev);

 dma_release_channel(ssp->dmach);

 return 0;
}
