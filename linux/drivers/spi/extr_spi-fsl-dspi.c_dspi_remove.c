
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct platform_device {int dummy; } ;
struct fsl_dspi {int ctlr; int clk; } ;


 int clk_disable_unprepare (int ) ;
 int dspi_release_dma (struct fsl_dspi*) ;
 struct spi_controller* platform_get_drvdata (struct platform_device*) ;
 struct fsl_dspi* spi_controller_get_devdata (struct spi_controller*) ;
 int spi_unregister_controller (int ) ;

__attribute__((used)) static int dspi_remove(struct platform_device *pdev)
{
 struct spi_controller *ctlr = platform_get_drvdata(pdev);
 struct fsl_dspi *dspi = spi_controller_get_devdata(ctlr);


 dspi_release_dma(dspi);
 clk_disable_unprepare(dspi->clk);
 spi_unregister_controller(dspi->ctlr);

 return 0;
}
