
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap1_spi100k {scalar_t__ base; } ;


 scalar_t__ SPI_CTRL ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void omap1_spi100k_force_cs(struct omap1_spi100k *spi100k, int enable)
{
 if (enable)
  writew(0x05fc, spi100k->base + SPI_CTRL);
 else
  writew(0x05fd, spi100k->base + SPI_CTRL);
}
