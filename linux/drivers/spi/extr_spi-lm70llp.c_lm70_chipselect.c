
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_lm70llp {int dummy; } ;
struct spi_device {int dummy; } ;


 int assertCS (struct spi_lm70llp*) ;
 int deassertCS (struct spi_lm70llp*) ;
 struct spi_lm70llp* spidev_to_pp (struct spi_device*) ;

__attribute__((used)) static void lm70_chipselect(struct spi_device *spi, int value)
{
 struct spi_lm70llp *pp = spidev_to_pp(spi);

 if (value)
  assertCS(pp);
 else
  deassertCS(pp);
}
