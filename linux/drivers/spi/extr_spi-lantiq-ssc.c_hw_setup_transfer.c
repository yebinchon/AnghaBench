
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_transfer {unsigned int speed_hz; unsigned int bits_per_word; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct spi_device {int dummy; } ;
struct lantiq_ssc_spi {unsigned int bits_per_word; unsigned int speed_hz; } ;


 int LTQ_SPI_CON ;
 int LTQ_SPI_CON_RXOFF ;
 int LTQ_SPI_CON_TXOFF ;
 int hw_enter_active_mode (struct lantiq_ssc_spi*) ;
 int hw_enter_config_mode (struct lantiq_ssc_spi*) ;
 int hw_setup_bits_per_word (struct lantiq_ssc_spi*,unsigned int) ;
 int hw_setup_speed_hz (struct lantiq_ssc_spi*,unsigned int) ;
 int lantiq_ssc_readl (struct lantiq_ssc_spi*,int ) ;
 int lantiq_ssc_writel (struct lantiq_ssc_spi*,int ,int ) ;

__attribute__((used)) static void hw_setup_transfer(struct lantiq_ssc_spi *spi,
         struct spi_device *spidev, struct spi_transfer *t)
{
 unsigned int speed_hz = t->speed_hz;
 unsigned int bits_per_word = t->bits_per_word;
 u32 con;

 if (bits_per_word != spi->bits_per_word ||
  speed_hz != spi->speed_hz) {
  hw_enter_config_mode(spi);
  hw_setup_speed_hz(spi, speed_hz);
  hw_setup_bits_per_word(spi, bits_per_word);
  hw_enter_active_mode(spi);

  spi->speed_hz = speed_hz;
  spi->bits_per_word = bits_per_word;
 }


 con = lantiq_ssc_readl(spi, LTQ_SPI_CON);
 if (t->tx_buf)
  con &= ~LTQ_SPI_CON_TXOFF;
 else
  con |= LTQ_SPI_CON_TXOFF;

 if (t->rx_buf)
  con &= ~LTQ_SPI_CON_RXOFF;
 else
  con |= LTQ_SPI_CON_RXOFF;

 lantiq_ssc_writel(spi, con, LTQ_SPI_CON);
}
