
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_qspi {int pclk; int refclk; } ;
struct spi_master {int dummy; } ;
struct platform_device {int dev; } ;


 int GQSPI_EN_OFST ;
 int clk_disable_unprepare (int ) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;
 struct zynqmp_qspi* spi_master_get_devdata (struct spi_master*) ;
 int spi_unregister_master (struct spi_master*) ;
 int zynqmp_gqspi_write (struct zynqmp_qspi*,int ,int) ;

__attribute__((used)) static int zynqmp_qspi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct zynqmp_qspi *xqspi = spi_master_get_devdata(master);

 zynqmp_gqspi_write(xqspi, GQSPI_EN_OFST, 0x0);
 clk_disable_unprepare(xqspi->refclk);
 clk_disable_unprepare(xqspi->pclk);
 pm_runtime_set_suspended(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 spi_unregister_master(master);

 return 0;
}
