
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct platform_device {int dummy; } ;
struct bcm2835_spi {int clk; } ;


 int BCM2835_SPI_CS ;
 int BCM2835_SPI_CS_CLEAR_RX ;
 int BCM2835_SPI_CS_CLEAR_TX ;
 int bcm2835_debugfs_remove (struct bcm2835_spi*) ;
 int bcm2835_dma_release (struct spi_controller*,struct bcm2835_spi*) ;
 int bcm2835_wr (struct bcm2835_spi*,int ,int) ;
 int clk_disable_unprepare (int ) ;
 struct spi_controller* platform_get_drvdata (struct platform_device*) ;
 struct bcm2835_spi* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int bcm2835_spi_remove(struct platform_device *pdev)
{
 struct spi_controller *ctlr = platform_get_drvdata(pdev);
 struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);

 bcm2835_debugfs_remove(bs);


 bcm2835_wr(bs, BCM2835_SPI_CS,
     BCM2835_SPI_CS_CLEAR_RX | BCM2835_SPI_CS_CLEAR_TX);

 clk_disable_unprepare(bs->clk);

 bcm2835_dma_release(ctlr, bs);

 return 0;
}
