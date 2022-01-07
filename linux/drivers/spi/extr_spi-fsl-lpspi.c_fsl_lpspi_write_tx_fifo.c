
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct fsl_lpspi_data {int txfifosize; scalar_t__ base; int is_slave; int (* tx ) (struct fsl_lpspi_data*) ;int remain; } ;


 int IER_FCIE ;
 int IER_TDIE ;
 scalar_t__ IMX7ULP_FSR ;
 scalar_t__ IMX7ULP_TCR ;
 int TCR_CONTC ;
 int fsl_lpspi_intctrl (struct fsl_lpspi_data*,int ) ;
 int readl (scalar_t__) ;
 int stub1 (struct fsl_lpspi_data*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void fsl_lpspi_write_tx_fifo(struct fsl_lpspi_data *fsl_lpspi)
{
 u8 txfifo_cnt;
 u32 temp;

 txfifo_cnt = readl(fsl_lpspi->base + IMX7ULP_FSR) & 0xff;

 while (txfifo_cnt < fsl_lpspi->txfifosize) {
  if (!fsl_lpspi->remain)
   break;
  fsl_lpspi->tx(fsl_lpspi);
  txfifo_cnt++;
 }

 if (txfifo_cnt < fsl_lpspi->txfifosize) {
  if (!fsl_lpspi->is_slave) {
   temp = readl(fsl_lpspi->base + IMX7ULP_TCR);
   temp &= ~TCR_CONTC;
   writel(temp, fsl_lpspi->base + IMX7ULP_TCR);
  }

  fsl_lpspi_intctrl(fsl_lpspi, IER_FCIE);
 } else
  fsl_lpspi_intctrl(fsl_lpspi, IER_TDIE);
}
