
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fsl_dspi {scalar_t__ len; scalar_t__ bytes_per_word; int tx_cmd; } ;


 int DSPI_FIFO_SIZE ;
 int SPI_PUSHR_CMD_CTCNT ;
 int SPI_PUSHR_CMD_EOQ ;
 int fifo_write (struct fsl_dspi*) ;

__attribute__((used)) static void dspi_eoq_write(struct fsl_dspi *dspi)
{
 int fifo_size = DSPI_FIFO_SIZE;
 u16 xfer_cmd = dspi->tx_cmd;


 while (dspi->len && fifo_size--) {
  dspi->tx_cmd = xfer_cmd;

  if (dspi->len == dspi->bytes_per_word || fifo_size == 0)
   dspi->tx_cmd |= SPI_PUSHR_CMD_EOQ;

  if (fifo_size == (DSPI_FIFO_SIZE - 1))
   dspi->tx_cmd |= SPI_PUSHR_CMD_CTCNT;

  fifo_write(dspi);
 }
}
