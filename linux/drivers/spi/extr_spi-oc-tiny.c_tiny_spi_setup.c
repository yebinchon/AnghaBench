
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiny_spi {scalar_t__ speed_hz; int mode; int baud; } ;
struct spi_device {scalar_t__ max_speed_hz; int mode; } ;


 int SPI_CPHA ;
 int SPI_CPOL ;
 int tiny_spi_baud (struct spi_device*,scalar_t__) ;
 struct tiny_spi* tiny_spi_to_hw (struct spi_device*) ;

__attribute__((used)) static int tiny_spi_setup(struct spi_device *spi)
{
 struct tiny_spi *hw = tiny_spi_to_hw(spi);

 if (spi->max_speed_hz != hw->speed_hz) {
  hw->speed_hz = spi->max_speed_hz;
  hw->baud = tiny_spi_baud(spi, hw->speed_hz);
 }
 hw->mode = spi->mode & (SPI_CPOL | SPI_CPHA);
 return 0;
}
