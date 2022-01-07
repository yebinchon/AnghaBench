
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_dspi {int tx_cmd; scalar_t__ len; int ctlr; } ;


 int SPI_PUSHR_CMD_CONT ;
 int dspi_pop_tx (struct fsl_dspi*) ;
 scalar_t__ spi_controller_is_slave (int ) ;

__attribute__((used)) static u32 dspi_pop_tx_pushr(struct fsl_dspi *dspi)
{
 u16 cmd = dspi->tx_cmd, data = dspi_pop_tx(dspi);

 if (spi_controller_is_slave(dspi->ctlr))
  return data;

 if (dspi->len > 0)
  cmd |= SPI_PUSHR_CMD_CONT;
 return cmd << 16 | data;
}
