
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynq_qspi {unsigned int txbuf; unsigned int tx_bytes; } ;






 int memcpy (int*,unsigned int,unsigned int) ;
 int zynq_qspi_write (struct zynq_qspi*,unsigned int const,int) ;

__attribute__((used)) static void zynq_qspi_txfifo_op(struct zynq_qspi *xqspi, unsigned int size)
{
 static const unsigned int offset[4] = {
  130, 129,
  128, 131 };
 u32 data;

 if (xqspi->txbuf) {
  data = 0xffffffff;
  memcpy(&data, xqspi->txbuf, size);
  xqspi->txbuf += size;
 } else {
  data = 0;
 }

 xqspi->tx_bytes -= size;
 zynq_qspi_write(xqspi, offset[size - 1], data);
}
