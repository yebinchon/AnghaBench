
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dspi {int regmap; } ;


 int SPI_PUSHR ;
 int dspi_pop_tx_pushr (struct fsl_dspi*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void fifo_write(struct fsl_dspi *dspi)
{
 regmap_write(dspi->regmap, SPI_PUSHR, dspi_pop_tx_pushr(dspi));
}
