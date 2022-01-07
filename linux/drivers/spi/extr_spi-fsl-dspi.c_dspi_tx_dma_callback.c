
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dspi_dma {int cmd_tx_complete; } ;
struct fsl_dspi {struct fsl_dspi_dma* dma; } ;


 int complete (int *) ;

__attribute__((used)) static void dspi_tx_dma_callback(void *arg)
{
 struct fsl_dspi *dspi = arg;
 struct fsl_dspi_dma *dma = dspi->dma;

 complete(&dma->cmd_tx_complete);
}
