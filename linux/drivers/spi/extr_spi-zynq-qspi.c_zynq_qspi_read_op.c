
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynq_qspi {int rx_bytes; int tx_bytes; scalar_t__ regs; scalar_t__ rxbuf; } ;


 scalar_t__ ZYNQ_QSPI_RXD_OFFSET ;
 int ioread32_rep (scalar_t__,scalar_t__,int) ;
 int readl_relaxed (scalar_t__) ;
 int zynq_qspi_rxfifo_op (struct zynq_qspi*,int) ;

__attribute__((used)) static void zynq_qspi_read_op(struct zynq_qspi *xqspi, int rxcount)
{
 int count, len, k;

 len = xqspi->rx_bytes - xqspi->tx_bytes;
 count = len / 4;
 if (count > rxcount)
  count = rxcount;
 if (xqspi->rxbuf) {
  ioread32_rep(xqspi->regs + ZYNQ_QSPI_RXD_OFFSET,
        xqspi->rxbuf, count);
  xqspi->rxbuf += count * 4;
 } else {
  for (k = 0; k < count; k++)
   readl_relaxed(xqspi->regs + ZYNQ_QSPI_RXD_OFFSET);
 }
 xqspi->rx_bytes -= count * 4;
 len -= count * 4;

 if (len && len < 4 && count < rxcount)
  zynq_qspi_rxfifo_op(xqspi, len);
}
