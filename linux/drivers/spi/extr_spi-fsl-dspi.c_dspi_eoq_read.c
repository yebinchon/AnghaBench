
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dspi {scalar_t__ rx; scalar_t__ rx_end; } ;


 int DSPI_FIFO_SIZE ;
 int dspi_push_rx (struct fsl_dspi*,int ) ;
 int fifo_read (struct fsl_dspi*) ;

__attribute__((used)) static void dspi_eoq_read(struct fsl_dspi *dspi)
{
 int fifo_size = DSPI_FIFO_SIZE;


 while ((dspi->rx < dspi->rx_end) && fifo_size--)
  dspi_push_rx(dspi, fifo_read(dspi));
}
