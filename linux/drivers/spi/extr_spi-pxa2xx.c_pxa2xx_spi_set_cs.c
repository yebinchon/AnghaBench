
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int cs_assert (struct spi_device*) ;
 int cs_deassert (struct spi_device*) ;

__attribute__((used)) static void pxa2xx_spi_set_cs(struct spi_device *spi, bool level)
{
 if (level)
  cs_deassert(spi);
 else
  cs_assert(spi);
}
