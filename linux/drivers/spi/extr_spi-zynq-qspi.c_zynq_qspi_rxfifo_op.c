
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct zynq_qspi {scalar_t__ rx_bytes; scalar_t__ rxbuf; } ;


 int ZYNQ_QSPI_RXD_OFFSET ;
 int memcpy (scalar_t__,int *,unsigned int) ;
 int zynq_qspi_read (struct zynq_qspi*,int ) ;

__attribute__((used)) static void zynq_qspi_rxfifo_op(struct zynq_qspi *xqspi, unsigned int size)
{
 u32 data;

 data = zynq_qspi_read(xqspi, ZYNQ_QSPI_RXD_OFFSET);

 if (xqspi->rxbuf) {
  memcpy(xqspi->rxbuf, ((u8 *)&data) + 4 - size, size);
  xqspi->rxbuf += size;
 }

 xqspi->rx_bytes -= size;
 if (xqspi->rx_bytes < 0)
  xqspi->rx_bytes = 0;
}
