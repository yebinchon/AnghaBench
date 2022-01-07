
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int dev; } ;


 int EINVAL ;
 int SPI_3WIRE ;
 int SPI_CS_HIGH ;
 int SPI_LSB_FIRST ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int
spi_lp8841_rtc_setup(struct spi_device *spi)
{
 if ((spi->mode & SPI_CS_HIGH) == 0) {
  dev_err(&spi->dev, "unsupported active low chip select\n");
  return -EINVAL;
 }

 if ((spi->mode & SPI_LSB_FIRST) == 0) {
  dev_err(&spi->dev, "unsupported MSB first mode\n");
  return -EINVAL;
 }

 if ((spi->mode & SPI_3WIRE) == 0) {
  dev_err(&spi->dev, "unsupported wiring. 3 wires required\n");
  return -EINVAL;
 }

 return 0;
}
