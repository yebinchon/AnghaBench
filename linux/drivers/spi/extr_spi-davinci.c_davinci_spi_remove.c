
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;
struct davinci_spi {scalar_t__ dma_tx; scalar_t__ dma_rx; int clk; int bitbang; } ;


 int clk_disable_unprepare (int ) ;
 int dma_release_channel (scalar_t__) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int spi_bitbang_stop (int *) ;
 struct davinci_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int davinci_spi_remove(struct platform_device *pdev)
{
 struct davinci_spi *dspi;
 struct spi_master *master;

 master = platform_get_drvdata(pdev);
 dspi = spi_master_get_devdata(master);

 spi_bitbang_stop(&dspi->bitbang);

 clk_disable_unprepare(dspi->clk);
 spi_master_put(master);

 if (dspi->dma_rx) {
  dma_release_channel(dspi->dma_rx);
  dma_release_channel(dspi->dma_tx);
 }

 return 0;
}
