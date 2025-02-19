
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* ulong ;
typedef int u32 ;
struct zynqmp_qspi {scalar_t__ bytes_to_receive; scalar_t__ rxbuf; } ;


 int GQSPI_RXD_OFST ;
 void* zynqmp_gqspi_read (struct zynqmp_qspi*,int ) ;
 int zynqmp_qspi_copy_read_data (struct zynqmp_qspi*,void*,int) ;

__attribute__((used)) static void zynqmp_qspi_readrxfifo(struct zynqmp_qspi *xqspi, u32 size)
{
 ulong data;
 int count = 0;

 while ((count < size) && (xqspi->bytes_to_receive > 0)) {
  if (xqspi->bytes_to_receive >= 4) {
   (*(u32 *) xqspi->rxbuf) =
   zynqmp_gqspi_read(xqspi, GQSPI_RXD_OFST);
   xqspi->rxbuf += 4;
   xqspi->bytes_to_receive -= 4;
   count += 4;
  } else {
   data = zynqmp_gqspi_read(xqspi, GQSPI_RXD_OFST);
   count += xqspi->bytes_to_receive;
   zynqmp_qspi_copy_read_data(xqspi, data,
         xqspi->bytes_to_receive);
   xqspi->bytes_to_receive = 0;
  }
 }
}
