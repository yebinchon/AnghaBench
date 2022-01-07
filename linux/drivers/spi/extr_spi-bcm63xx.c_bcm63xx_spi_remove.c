
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;
struct bcm63xx_spi {int clk; } ;


 int SPI_INT_MASK ;
 int bcm_spi_writeb (struct bcm63xx_spi*,int ,int ) ;
 int clk_disable_unprepare (int ) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 struct bcm63xx_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int bcm63xx_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct bcm63xx_spi *bs = spi_master_get_devdata(master);


 bcm_spi_writeb(bs, 0, SPI_INT_MASK);


 clk_disable_unprepare(bs->clk);

 return 0;
}
