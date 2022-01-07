
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_transfer {int dummy; } ;
struct spi_device {int dev; } ;
struct spi_controller {int dummy; } ;
struct bcm2835_spi {int count_transfer_irq_after_polling; scalar_t__ rx_len; int tx_len; int count_transfer_polling; } ;


 int BCM2835_SPI_CS ;
 int BCM2835_SPI_CS_TA ;
 int BCM2835_SPI_FIFO_SIZE ;
 int HZ ;
 int bcm2835_rd_fifo (struct bcm2835_spi*) ;
 int bcm2835_spi_reset_hw (struct spi_controller*) ;
 int bcm2835_spi_transfer_one_irq (struct spi_controller*,struct spi_device*,struct spi_transfer*,int,int) ;
 int bcm2835_wr (struct bcm2835_spi*,int ,int) ;
 int bcm2835_wr_fifo (struct bcm2835_spi*) ;
 int bcm2835_wr_fifo_blind (struct bcm2835_spi*,int ) ;
 int dev_dbg_ratelimited (int *,char*,int,int ,scalar_t__) ;
 int jiffies ;
 int polling_limit_us ;
 struct bcm2835_spi* spi_controller_get_devdata (struct spi_controller*) ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static int bcm2835_spi_transfer_one_poll(struct spi_controller *ctlr,
      struct spi_device *spi,
      struct spi_transfer *tfr,
      u32 cs)
{
 struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);
 unsigned long timeout;


 bs->count_transfer_polling++;


 bcm2835_wr(bs, BCM2835_SPI_CS, cs | BCM2835_SPI_CS_TA);





 bcm2835_wr_fifo_blind(bs, BCM2835_SPI_FIFO_SIZE);


 timeout = jiffies + 2 + HZ * polling_limit_us / 1000000;


 while (bs->rx_len) {

  bcm2835_wr_fifo(bs);


  bcm2835_rd_fifo(bs);




  if (bs->rx_len && time_after(jiffies, timeout)) {
   dev_dbg_ratelimited(&spi->dev,
         "timeout period reached: jiffies: %lu remaining tx/rx: %d/%d - falling back to interrupt mode\n",
         jiffies - timeout,
         bs->tx_len, bs->rx_len);



   bs->count_transfer_irq_after_polling++;

   return bcm2835_spi_transfer_one_irq(ctlr, spi,
           tfr, cs, 0);
  }
 }


 bcm2835_spi_reset_hw(ctlr);

 return 0;
}
