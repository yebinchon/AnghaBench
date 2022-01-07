
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct sirfsoc_spi {int tx_chan; int rx_chan; int clk; int bitbang; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int dma_release_channel (int ) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int spi_bitbang_stop (int *) ;
 struct sirfsoc_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int spi_sirfsoc_remove(struct platform_device *pdev)
{
 struct spi_master *master;
 struct sirfsoc_spi *sspi;

 master = platform_get_drvdata(pdev);
 sspi = spi_master_get_devdata(master);
 spi_bitbang_stop(&sspi->bitbang);
 clk_disable_unprepare(sspi->clk);
 clk_put(sspi->clk);
 dma_release_channel(sspi->rx_chan);
 dma_release_channel(sspi->tx_chan);
 spi_master_put(master);
 return 0;
}
