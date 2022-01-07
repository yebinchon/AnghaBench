
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct lantiq_ssc_spi {int dev; int fpi_clk; } ;


 int LTQ_SPI_BRT ;
 int clk_get_rate (int ) ;
 int dev_dbg (int ,char*,unsigned int,unsigned int,unsigned int) ;
 int lantiq_ssc_writel (struct lantiq_ssc_spi const*,unsigned int,int ) ;

__attribute__((used)) static void hw_setup_speed_hz(const struct lantiq_ssc_spi *spi,
         unsigned int max_speed_hz)
{
 u32 spi_clk, brt;
 spi_clk = clk_get_rate(spi->fpi_clk) / 2;

 if (max_speed_hz > spi_clk)
  brt = 0;
 else
  brt = spi_clk / max_speed_hz - 1;

 if (brt > 0xFFFF)
  brt = 0xFFFF;

 dev_dbg(spi->dev, "spi_clk %u, max_speed_hz %u, brt %u\n",
  spi_clk, max_speed_hz, brt);

 lantiq_ssc_writel(spi, brt, LTQ_SPI_BRT);
}
