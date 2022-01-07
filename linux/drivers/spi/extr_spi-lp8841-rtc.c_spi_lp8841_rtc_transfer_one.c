
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {unsigned int len; int * rx_buf; int * tx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_lp8841_rtc {int iomem; int state; } ;
struct spi_device {int dummy; } ;


 int EINVAL ;
 int SPI_LP8841_RTC_nWE ;
 int SPI_MASTER_NO_RX ;
 int SPI_MASTER_NO_TX ;
 int bitbang_txrx_be_cpha0_lsb (struct spi_lp8841_rtc*,int,int ,int ,int ,int) ;
 scalar_t__ likely (int) ;
 int spi_finalize_current_transfer (struct spi_master*) ;
 struct spi_lp8841_rtc* spi_master_get_devdata (struct spi_master*) ;
 int writeb (int ,int ) ;

__attribute__((used)) static int
spi_lp8841_rtc_transfer_one(struct spi_master *master,
       struct spi_device *spi,
       struct spi_transfer *t)
{
 struct spi_lp8841_rtc *data = spi_master_get_devdata(master);
 unsigned count = t->len;
 const u8 *tx = t->tx_buf;
 u8 *rx = t->rx_buf;
 u8 word = 0;
 int ret = 0;

 if (tx) {
  data->state &= ~SPI_LP8841_RTC_nWE;
  writeb(data->state, data->iomem);
  while (likely(count > 0)) {
   word = *tx++;
   bitbang_txrx_be_cpha0_lsb(data, 1, 0,
     SPI_MASTER_NO_RX, word, 8);
   count--;
  }
 } else if (rx) {
  data->state |= SPI_LP8841_RTC_nWE;
  writeb(data->state, data->iomem);
  while (likely(count > 0)) {
   word = bitbang_txrx_be_cpha0_lsb(data, 1, 0,
     SPI_MASTER_NO_TX, word, 8);
   *rx++ = word;
   count--;
  }
 } else {
  ret = -EINVAL;
 }

 spi_finalize_current_transfer(master);

 return ret;
}
