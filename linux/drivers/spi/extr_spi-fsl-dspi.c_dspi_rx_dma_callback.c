
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dspi_dma {int curr_xfer_len; int cmd_rx_complete; int * rx_dma_buf; } ;
struct fsl_dspi {struct fsl_dspi_dma* dma; scalar_t__ rx; } ;


 int complete (int *) ;
 int dspi_push_rx (struct fsl_dspi*,int ) ;

__attribute__((used)) static void dspi_rx_dma_callback(void *arg)
{
 struct fsl_dspi *dspi = arg;
 struct fsl_dspi_dma *dma = dspi->dma;
 int i;

 if (dspi->rx) {
  for (i = 0; i < dma->curr_xfer_len; i++)
   dspi_push_rx(dspi, dspi->dma->rx_dma_buf[i]);
 }

 complete(&dma->cmd_rx_complete);
}
