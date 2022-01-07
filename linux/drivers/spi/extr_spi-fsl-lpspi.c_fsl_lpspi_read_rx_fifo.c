
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_lpspi_data {int (* rx ) (struct fsl_lpspi_data*) ;scalar_t__ base; } ;


 scalar_t__ IMX7ULP_RSR ;
 int RSR_RXEMPTY ;
 int readl (scalar_t__) ;
 int stub1 (struct fsl_lpspi_data*) ;

__attribute__((used)) static void fsl_lpspi_read_rx_fifo(struct fsl_lpspi_data *fsl_lpspi)
{
 while (!(readl(fsl_lpspi->base + IMX7ULP_RSR) & RSR_RXEMPTY))
  fsl_lpspi->rx(fsl_lpspi);
}
