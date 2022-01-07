
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef scalar_t__ u8 ;
struct zynqmp_qspi {int bytes_to_receive; int rxbuf; } ;


 int memcpy (int ,int *,scalar_t__) ;

__attribute__((used)) static void zynqmp_qspi_copy_read_data(struct zynqmp_qspi *xqspi,
           ulong data, u8 size)
{
 memcpy(xqspi->rxbuf, &data, size);
 xqspi->rxbuf += size;
 xqspi->bytes_to_receive -= size;
}
