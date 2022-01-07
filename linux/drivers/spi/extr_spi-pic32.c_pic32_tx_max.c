
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pic32_spi {int tx_end; int tx; int fifo_n_elm; int rx_end; int rx; } ;


 int min3 (int,int,int) ;
 int pic32_tx_fifo_level (struct pic32_spi*) ;

__attribute__((used)) static u32 pic32_tx_max(struct pic32_spi *pic32s, int n_bytes)
{
 u32 tx_left, tx_room, rxtx_gap;

 tx_left = (pic32s->tx_end - pic32s->tx) / n_bytes;
 tx_room = pic32s->fifo_n_elm - pic32_tx_fifo_level(pic32s);
 rxtx_gap = ((pic32s->rx_end - pic32s->rx) -
      (pic32s->tx_end - pic32s->tx)) / n_bytes;
 return min3(tx_left, tx_room, (u32)(pic32s->fifo_n_elm - rxtx_gap));
}
