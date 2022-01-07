
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_master {int dev; } ;
struct ep93xx_spi {scalar_t__ fifo_level; scalar_t__ mmio; } ;


 int ETIMEDOUT ;
 int SPI_TIMEOUT ;
 scalar_t__ SSPDR ;
 scalar_t__ SSPSR ;
 int SSPSR_RNE ;
 int dev_warn (int *,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int readl (scalar_t__) ;
 struct ep93xx_spi* spi_master_get_devdata (struct spi_master*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int ep93xx_spi_prepare_message(struct spi_master *master,
          struct spi_message *msg)
{
 struct ep93xx_spi *espi = spi_master_get_devdata(master);
 unsigned long timeout;




 timeout = jiffies + msecs_to_jiffies(SPI_TIMEOUT);
 while (readl(espi->mmio + SSPSR) & SSPSR_RNE) {
  if (time_after(jiffies, timeout)) {
   dev_warn(&master->dev,
     "timeout while flushing RX FIFO\n");
   return -ETIMEDOUT;
  }
  readl(espi->mmio + SSPDR);
 }





 espi->fifo_level = 0;

 return 0;
}
