
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef void* u32 ;
typedef void* u16 ;
struct xilinx_spi {int bytes_per_word; scalar_t__ rx_ptr; scalar_t__ regs; void* (* read_fn ) (scalar_t__) ;} ;


 scalar_t__ XSPI_RXD_OFFSET ;
 void* stub1 (scalar_t__) ;

__attribute__((used)) static void xilinx_spi_rx(struct xilinx_spi *xspi)
{
 u32 data = xspi->read_fn(xspi->regs + XSPI_RXD_OFFSET);

 if (!xspi->rx_ptr)
  return;

 switch (xspi->bytes_per_word) {
 case 1:
  *(u8 *)(xspi->rx_ptr) = data;
  break;
 case 2:
  *(u16 *)(xspi->rx_ptr) = data;
  break;
 case 4:
  *(u32 *)(xspi->rx_ptr) = data;
  break;
 }

 xspi->rx_ptr += xspi->bytes_per_word;
}
