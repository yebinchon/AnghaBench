
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_spi {int tx_end; int tx; int n_bytes; int fifo_len; int rx_end; int rx; } ;


 int DW_SPI_TXFLR ;
 int dw_readl (struct dw_spi*,int ) ;
 int min3 (int,int,int) ;

__attribute__((used)) static inline u32 tx_max(struct dw_spi *dws)
{
 u32 tx_left, tx_room, rxtx_gap;

 tx_left = (dws->tx_end - dws->tx) / dws->n_bytes;
 tx_room = dws->fifo_len - dw_readl(dws, DW_SPI_TXFLR);
 rxtx_gap = ((dws->rx_end - dws->rx) - (dws->tx_end - dws->tx))
   / dws->n_bytes;

 return min3(tx_left, tx_room, (u32) (dws->fifo_len - rxtx_gap));
}
