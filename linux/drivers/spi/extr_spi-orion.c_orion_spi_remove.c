
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dev; } ;
struct orion_spi {int clk; int axi_clk; } ;


 int clk_disable_unprepare (int ) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 struct orion_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_unregister_master (struct spi_master*) ;

__attribute__((used)) static int orion_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct orion_spi *spi = spi_master_get_devdata(master);

 pm_runtime_get_sync(&pdev->dev);
 clk_disable_unprepare(spi->axi_clk);
 clk_disable_unprepare(spi->clk);

 spi_unregister_master(master);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
