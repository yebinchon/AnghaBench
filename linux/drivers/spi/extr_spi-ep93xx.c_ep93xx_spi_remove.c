
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;
struct ep93xx_spi {int dummy; } ;


 int ep93xx_spi_release_dma (struct ep93xx_spi*) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 struct ep93xx_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int ep93xx_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct ep93xx_spi *espi = spi_master_get_devdata(master);

 ep93xx_spi_release_dma(espi);

 return 0;
}
