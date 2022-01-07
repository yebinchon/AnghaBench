
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {scalar_t__ speed_hz; } ;
struct spi_device {int dev; int master; } ;
struct bcm63xx_spi {int dummy; } ;


 int SPI_CLK_0_391MHZ ;
 int SPI_CLK_CFG ;
 int SPI_CLK_MASK ;
 scalar_t__** bcm63xx_spi_freq_table ;
 int bcm_spi_readb (struct bcm63xx_spi*,int ) ;
 int bcm_spi_writeb (struct bcm63xx_spi*,int,int ) ;
 int dev_dbg (int *,char*,int,scalar_t__) ;
 struct bcm63xx_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void bcm63xx_spi_setup_transfer(struct spi_device *spi,
          struct spi_transfer *t)
{
 struct bcm63xx_spi *bs = spi_master_get_devdata(spi->master);
 u8 clk_cfg, reg;
 int i;


 clk_cfg = SPI_CLK_0_391MHZ;


 for (i = 0; i < SPI_CLK_MASK; i++) {
  if (t->speed_hz >= bcm63xx_spi_freq_table[i][0]) {
   clk_cfg = bcm63xx_spi_freq_table[i][1];
   break;
  }
 }


 reg = bcm_spi_readb(bs, SPI_CLK_CFG);
 reg &= ~SPI_CLK_MASK;
 reg |= clk_cfg;

 bcm_spi_writeb(bs, reg, SPI_CLK_CFG);
 dev_dbg(&spi->dev, "Setting clock register to %02x (hz %d)\n",
  clk_cfg, t->speed_hz);
}
