
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynqmp_qspi {int bytes_to_transfer; int txbuf; } ;


 int GQSPI_TXD_OFST ;
 int memcpy (int*,int,int) ;
 int zynqmp_gqspi_write (struct zynqmp_qspi*,int ,int) ;

__attribute__((used)) static void zynqmp_qspi_filltxfifo(struct zynqmp_qspi *xqspi, int size)
{
 u32 count = 0, intermediate;

 while ((xqspi->bytes_to_transfer > 0) && (count < size)) {
  memcpy(&intermediate, xqspi->txbuf, 4);
  zynqmp_gqspi_write(xqspi, GQSPI_TXD_OFST, intermediate);

  if (xqspi->bytes_to_transfer >= 4) {
   xqspi->txbuf += 4;
   xqspi->bytes_to_transfer -= 4;
  } else {
   xqspi->txbuf += xqspi->bytes_to_transfer;
   xqspi->bytes_to_transfer = 0;
  }
  count++;
 }
}
