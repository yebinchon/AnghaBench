
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_dspi {int regmap; TYPE_1__* devtype_data; int ctlr; } ;
struct TYPE_2__ {scalar_t__ xspi_mode; } ;


 int SPI_CTARE (int ) ;
 unsigned int SPI_CTARE_DTCP (int) ;
 unsigned int SPI_CTARE_FMSZE (int ) ;
 int SPI_MCR ;
 unsigned int SPI_MCR_MASTER ;
 unsigned int SPI_MCR_PCSIS ;
 unsigned int SPI_MCR_XSPI ;
 int SPI_SR ;
 unsigned int SPI_SR_CLEAR ;
 int regmap_write (int ,int ,unsigned int) ;
 int spi_controller_is_slave (int ) ;

__attribute__((used)) static void dspi_init(struct fsl_dspi *dspi)
{
 unsigned int mcr = SPI_MCR_PCSIS;

 if (dspi->devtype_data->xspi_mode)
  mcr |= SPI_MCR_XSPI;
 if (!spi_controller_is_slave(dspi->ctlr))
  mcr |= SPI_MCR_MASTER;

 regmap_write(dspi->regmap, SPI_MCR, mcr);
 regmap_write(dspi->regmap, SPI_SR, SPI_SR_CLEAR);
 if (dspi->devtype_data->xspi_mode)
  regmap_write(dspi->regmap, SPI_CTARE(0),
        SPI_CTARE_FMSZE(0) | SPI_CTARE_DTCP(1));
}
