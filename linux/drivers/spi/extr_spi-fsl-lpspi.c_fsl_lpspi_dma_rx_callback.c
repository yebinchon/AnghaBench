
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_lpspi_data {int dma_rx_completion; } ;


 int complete (int *) ;

__attribute__((used)) static void fsl_lpspi_dma_rx_callback(void *cookie)
{
 struct fsl_lpspi_data *fsl_lpspi = (struct fsl_lpspi_data *)cookie;

 complete(&fsl_lpspi->dma_rx_completion);
}
