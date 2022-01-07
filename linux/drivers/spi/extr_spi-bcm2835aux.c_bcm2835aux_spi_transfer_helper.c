
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835aux_spi {int pending; scalar_t__ tx_len; scalar_t__ rx_len; } ;


 int BCM2835_AUX_SPI_STAT ;
 int BCM2835_AUX_SPI_STAT_RX_LVL ;
 int BCM2835_AUX_SPI_STAT_TX_FULL ;
 int bcm2835aux_rd (struct bcm2835aux_spi*,int ) ;
 int bcm2835aux_rd_fifo (struct bcm2835aux_spi*) ;
 int bcm2835aux_wr_fifo (struct bcm2835aux_spi*) ;

__attribute__((used)) static void bcm2835aux_spi_transfer_helper(struct bcm2835aux_spi *bs)
{
 u32 stat = bcm2835aux_rd(bs, BCM2835_AUX_SPI_STAT);


 for (; bs->rx_len && (stat & BCM2835_AUX_SPI_STAT_RX_LVL);
      stat = bcm2835aux_rd(bs, BCM2835_AUX_SPI_STAT))
  bcm2835aux_rd_fifo(bs);


 while (bs->tx_len &&
        (bs->pending < 12) &&
        (!(bcm2835aux_rd(bs, BCM2835_AUX_SPI_STAT) &
    BCM2835_AUX_SPI_STAT_TX_FULL))) {
  bcm2835aux_wr_fifo(bs);
 }
}
