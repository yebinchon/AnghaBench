
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct omap1_spi100k {scalar_t__ base; } ;


 scalar_t__ SPI_CTRL ;
 int SPI_CTRL_RD ;
 int SPI_CTRL_SEN (int ) ;
 int SPI_CTRL_WORD_SIZE (int) ;
 scalar_t__ SPI_RX_LSB ;
 scalar_t__ SPI_RX_MSB ;
 scalar_t__ SPI_STATUS ;
 int SPI_STATUS_RD ;
 int readw (scalar_t__) ;
 int spi100k_disable_clock (struct spi_master*) ;
 int spi100k_enable_clock (struct spi_master*) ;
 struct omap1_spi100k* spi_master_get_devdata (struct spi_master*) ;
 int udelay (int) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int spi100k_read_data(struct spi_master *master, int len)
{
 int dataH, dataL;
 struct omap1_spi100k *spi100k = spi_master_get_devdata(master);


 if (len <= 8)
  len = 16;

 spi100k_enable_clock(master);
 writew(SPI_CTRL_SEN(0) |
        SPI_CTRL_WORD_SIZE(len) |
        SPI_CTRL_RD,
        spi100k->base + SPI_CTRL);

 while ((readw(spi100k->base + SPI_STATUS) & SPI_STATUS_RD) != SPI_STATUS_RD)
  ;
 udelay(1000);

 dataL = readw(spi100k->base + SPI_RX_LSB);
 dataH = readw(spi100k->base + SPI_RX_MSB);
 spi100k_disable_clock(master);

 return dataL;
}
