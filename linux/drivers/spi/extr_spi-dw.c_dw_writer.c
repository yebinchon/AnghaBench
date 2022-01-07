
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct dw_spi {int n_bytes; scalar_t__ tx; scalar_t__ len; scalar_t__ tx_end; } ;


 int DW_SPI_DR ;
 int dw_write_io_reg (struct dw_spi*,int ,int ) ;
 int tx_max (struct dw_spi*) ;

__attribute__((used)) static void dw_writer(struct dw_spi *dws)
{
 u32 max = tx_max(dws);
 u16 txw = 0;

 while (max--) {

  if (dws->tx_end - dws->len) {
   if (dws->n_bytes == 1)
    txw = *(u8 *)(dws->tx);
   else
    txw = *(u16 *)(dws->tx);
  }
  dw_write_io_reg(dws, DW_SPI_DR, txw);
  dws->tx += dws->n_bytes;
 }
}
