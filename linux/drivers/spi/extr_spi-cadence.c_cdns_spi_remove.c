
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dev; } ;
struct cdns_spi {int pclk; int ref_clk; } ;


 int CDNS_SPI_ER ;
 int CDNS_SPI_ER_DISABLE ;
 int cdns_spi_write (struct cdns_spi*,int ,int ) ;
 int clk_disable_unprepare (int ) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;
 struct cdns_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_unregister_master (struct spi_master*) ;

__attribute__((used)) static int cdns_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct cdns_spi *xspi = spi_master_get_devdata(master);

 cdns_spi_write(xspi, CDNS_SPI_ER, CDNS_SPI_ER_DISABLE);

 clk_disable_unprepare(xspi->ref_clk);
 clk_disable_unprepare(xspi->pclk);
 pm_runtime_set_suspended(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 spi_unregister_master(master);

 return 0;
}
