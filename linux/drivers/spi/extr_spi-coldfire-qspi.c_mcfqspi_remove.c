
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dev; } ;
struct mcfqspi {int clk; } ;


 int MCFQSPI_QMR_MSTR ;
 int clk_disable (int ) ;
 int mcfqspi_cs_teardown (struct mcfqspi*) ;
 int mcfqspi_wr_qmr (struct mcfqspi*,int ) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 struct mcfqspi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int mcfqspi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct mcfqspi *mcfqspi = spi_master_get_devdata(master);

 pm_runtime_disable(&pdev->dev);

 mcfqspi_wr_qmr(mcfqspi, MCFQSPI_QMR_MSTR);

 mcfqspi_cs_teardown(mcfqspi);
 clk_disable(mcfqspi->clk);

 return 0;
}
