
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct dw_spi {int n_bytes; scalar_t__ rx; scalar_t__ len; scalar_t__ rx_end; } ;


 int DW_SPI_DR ;
 int dw_read_io_reg (struct dw_spi*,int ) ;
 int rx_max (struct dw_spi*) ;

__attribute__((used)) static void dw_reader(struct dw_spi *dws)
{
 u32 max = rx_max(dws);
 u16 rxw;

 while (max--) {
  rxw = dw_read_io_reg(dws, DW_SPI_DR);

  if (dws->rx_end - dws->len) {
   if (dws->n_bytes == 1)
    *(u8 *)(dws->rx) = rxw;
   else
    *(u16 *)(dws->rx) = rxw;
  }
  dws->rx += dws->n_bytes;
 }
}
