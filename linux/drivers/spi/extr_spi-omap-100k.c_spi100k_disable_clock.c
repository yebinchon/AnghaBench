
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct omap1_spi100k {scalar_t__ base; } ;


 scalar_t__ SPI_SETUP1 ;
 unsigned int SPI_SETUP1_CLOCK_ENABLE ;
 unsigned int readw (scalar_t__) ;
 struct omap1_spi100k* spi_master_get_devdata (struct spi_master*) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static void spi100k_disable_clock(struct spi_master *master)
{
 unsigned int val;
 struct omap1_spi100k *spi100k = spi_master_get_devdata(master);


 val = readw(spi100k->base + SPI_SETUP1);
 val &= ~SPI_SETUP1_CLOCK_ENABLE;
 writew(val, spi100k->base + SPI_SETUP1);
}
