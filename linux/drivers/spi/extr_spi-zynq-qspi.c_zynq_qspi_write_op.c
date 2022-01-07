
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynq_qspi {int tx_bytes; scalar_t__ regs; scalar_t__ txbuf; } ;


 scalar_t__ ZYNQ_QSPI_TXD_00_00_OFFSET ;
 int iowrite32_rep (scalar_t__,scalar_t__,int) ;
 int writel_relaxed (int ,scalar_t__) ;
 int zynq_qspi_txfifo_op (struct zynq_qspi*,int) ;

__attribute__((used)) static void zynq_qspi_write_op(struct zynq_qspi *xqspi, int txcount,
          bool txempty)
{
 int count, len, k;

 len = xqspi->tx_bytes;
 if (len && len < 4) {




  if (txempty)
   zynq_qspi_txfifo_op(xqspi, len);

  return;
 }

 count = len / 4;
 if (count > txcount)
  count = txcount;

 if (xqspi->txbuf) {
  iowrite32_rep(xqspi->regs + ZYNQ_QSPI_TXD_00_00_OFFSET,
         xqspi->txbuf, count);
  xqspi->txbuf += count * 4;
 } else {
  for (k = 0; k < count; k++)
   writel_relaxed(0, xqspi->regs +
       ZYNQ_QSPI_TXD_00_00_OFFSET);
 }

 xqspi->tx_bytes -= count * 4;
}
