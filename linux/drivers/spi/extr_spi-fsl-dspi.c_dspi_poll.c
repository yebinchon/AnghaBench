
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_dspi {int regmap; } ;


 int ETIMEDOUT ;
 int SPI_SR ;
 int SPI_SR_EOQF ;
 int SPI_SR_TCFQF ;
 int dspi_rxtx (struct fsl_dspi*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int dspi_poll(struct fsl_dspi *dspi)
{
 int tries = 1000;
 u32 spi_sr;

 do {
  regmap_read(dspi->regmap, SPI_SR, &spi_sr);
  regmap_write(dspi->regmap, SPI_SR, spi_sr);

  if (spi_sr & (SPI_SR_EOQF | SPI_SR_TCFQF))
   break;
 } while (--tries);

 if (!tries)
  return -ETIMEDOUT;

 return dspi_rxtx(dspi);
}
