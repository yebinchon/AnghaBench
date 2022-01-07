
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_spi {int rx_len; int rx_buf; } ;


 int BCM2835_SPI_FIFO ;
 int bcm2835_rd (struct bcm2835_spi*,int ) ;
 int memcpy (int,int *,int) ;
 int min (int,int) ;

__attribute__((used)) static inline void bcm2835_rd_fifo_count(struct bcm2835_spi *bs, int count)
{
 u32 val;
 int len;

 bs->rx_len -= count;

 while (count > 0) {
  val = bcm2835_rd(bs, BCM2835_SPI_FIFO);
  len = min(count, 4);
  memcpy(bs->rx_buf, &val, len);
  bs->rx_buf += len;
  count -= 4;
 }
}
