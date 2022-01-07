
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int dummy; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dev; } ;
struct bcm2835aux_spi {int count_transfer_irq_after_poll; scalar_t__ rx_len; int tx_len; int * cntl; int count_transfer_polling; } ;


 int BCM2835_AUX_SPI_CNTL0 ;
 int BCM2835_AUX_SPI_CNTL1 ;
 int HZ ;
 int __bcm2835aux_spi_transfer_one_irq (struct spi_master*,struct spi_device*,struct spi_transfer*) ;
 int bcm2835aux_spi_transfer_helper (struct bcm2835aux_spi*) ;
 int bcm2835aux_wr (struct bcm2835aux_spi*,int ,int ) ;
 int dev_dbg_ratelimited (int *,char*,int,int ,scalar_t__) ;
 int jiffies ;
 int polling_limit_us ;
 struct bcm2835aux_spi* spi_master_get_devdata (struct spi_master*) ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static int bcm2835aux_spi_transfer_one_poll(struct spi_master *master,
         struct spi_device *spi,
     struct spi_transfer *tfr)
{
 struct bcm2835aux_spi *bs = spi_master_get_devdata(master);
 unsigned long timeout;


 bs->count_transfer_polling++;


 bcm2835aux_wr(bs, BCM2835_AUX_SPI_CNTL1, bs->cntl[1]);
 bcm2835aux_wr(bs, BCM2835_AUX_SPI_CNTL0, bs->cntl[0]);


 timeout = jiffies + 2 + HZ * polling_limit_us / 1000000;


 while (bs->rx_len) {


  bcm2835aux_spi_transfer_helper(bs);


  if (bs->rx_len && time_after(jiffies, timeout)) {
   dev_dbg_ratelimited(&spi->dev,
         "timeout period reached: jiffies: %lu remaining tx/rx: %d/%d - falling back to interrupt mode\n",
         jiffies - timeout,
         bs->tx_len, bs->rx_len);

   bs->count_transfer_irq_after_poll++;
   return __bcm2835aux_spi_transfer_one_irq(master,
              spi, tfr);
  }
 }


 return 0;
}
