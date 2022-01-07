
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiny_spi {unsigned int baud; scalar_t__ speed_hz; unsigned int mode; scalar_t__ base; } ;
struct spi_transfer {scalar_t__ speed_hz; } ;
struct spi_device {int dummy; } ;


 scalar_t__ TINY_SPI_BAUD ;
 scalar_t__ TINY_SPI_CONTROL ;
 unsigned int tiny_spi_baud (struct spi_device*,scalar_t__) ;
 struct tiny_spi* tiny_spi_to_hw (struct spi_device*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int tiny_spi_setup_transfer(struct spi_device *spi,
       struct spi_transfer *t)
{
 struct tiny_spi *hw = tiny_spi_to_hw(spi);
 unsigned int baud = hw->baud;

 if (t) {
  if (t->speed_hz && t->speed_hz != hw->speed_hz)
   baud = tiny_spi_baud(spi, t->speed_hz);
 }
 writel(baud, hw->base + TINY_SPI_BAUD);
 writel(hw->mode, hw->base + TINY_SPI_CONTROL);
 return 0;
}
