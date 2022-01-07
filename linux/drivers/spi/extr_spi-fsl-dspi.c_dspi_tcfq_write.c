
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fsl_dspi {int bits_per_word; TYPE_2__* cur_chip; TYPE_1__* devtype_data; int tx_cmd; } ;
struct TYPE_4__ {int ctar_val; } ;
struct TYPE_3__ {scalar_t__ xspi_mode; } ;


 int SPI_CTAR_LSBFE ;
 int SPI_PUSHR_CMD_CTCNT ;
 int cmd_fifo_write (struct fsl_dspi*) ;
 int dspi_pop_tx (struct fsl_dspi*) ;
 int fifo_write (struct fsl_dspi*) ;
 int tx_fifo_write (struct fsl_dspi*,int) ;

__attribute__((used)) static void dspi_tcfq_write(struct fsl_dspi *dspi)
{

 dspi->tx_cmd |= SPI_PUSHR_CMD_CTCNT;

 if (dspi->devtype_data->xspi_mode && dspi->bits_per_word > 16) {



  u32 data = dspi_pop_tx(dspi);

  if (dspi->cur_chip->ctar_val & SPI_CTAR_LSBFE) {

   tx_fifo_write(dspi, data & 0xFFFF);
   tx_fifo_write(dspi, data >> 16);
  } else {

   tx_fifo_write(dspi, data >> 16);
   tx_fifo_write(dspi, data & 0xFFFF);
  }
  cmd_fifo_write(dspi);
 } else {



  fifo_write(dspi);
 }
}
