
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {unsigned long speed_hz; unsigned long len; int rx_buf; int tx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct bcm2835aux_spi {unsigned long* cntl; unsigned long tx_len; unsigned long rx_len; scalar_t__ pending; int rx_buf; int tx_buf; int clk; } ;


 unsigned long BCM2835_AUX_SPI_CNTL0_SPEED ;
 unsigned long BCM2835_AUX_SPI_CNTL0_SPEED_MAX ;
 unsigned long BCM2835_AUX_SPI_CNTL0_SPEED_SHIFT ;
 int DIV_ROUND_UP (unsigned long,int) ;
 int bcm2835aux_spi_transfer_one_irq (struct spi_master*,struct spi_device*,struct spi_transfer*) ;
 int bcm2835aux_spi_transfer_one_poll (struct spi_master*,struct spi_device*,struct spi_transfer*) ;
 unsigned long clk_get_rate (int ) ;
 int polling_limit_us ;
 struct bcm2835aux_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int bcm2835aux_spi_transfer_one(struct spi_master *master,
           struct spi_device *spi,
           struct spi_transfer *tfr)
{
 struct bcm2835aux_spi *bs = spi_master_get_devdata(master);
 unsigned long spi_hz, clk_hz, speed, spi_used_hz;
 unsigned long hz_per_byte, byte_limit;
 spi_hz = tfr->speed_hz;
 clk_hz = clk_get_rate(bs->clk);

 if (spi_hz >= clk_hz / 2) {
  speed = 0;
 } else if (spi_hz) {
  speed = DIV_ROUND_UP(clk_hz, 2 * spi_hz) - 1;
  if (speed > BCM2835_AUX_SPI_CNTL0_SPEED_MAX)
   speed = BCM2835_AUX_SPI_CNTL0_SPEED_MAX;
 } else {
  speed = BCM2835_AUX_SPI_CNTL0_SPEED_MAX;
 }

 bs->cntl[0] &= ~(BCM2835_AUX_SPI_CNTL0_SPEED);

 bs->cntl[0] |= speed << BCM2835_AUX_SPI_CNTL0_SPEED_SHIFT;

 spi_used_hz = clk_hz / (2 * (speed + 1));


 bs->tx_buf = tfr->tx_buf;
 bs->rx_buf = tfr->rx_buf;
 bs->tx_len = tfr->len;
 bs->rx_len = tfr->len;
 bs->pending = 0;
 hz_per_byte = polling_limit_us ? (9 * 1000000) / polling_limit_us : 0;
 byte_limit = hz_per_byte ? spi_used_hz / hz_per_byte : 1;


 if (tfr->len < byte_limit)
  return bcm2835aux_spi_transfer_one_poll(master, spi, tfr);


 return bcm2835aux_spi_transfer_one_irq(master, spi, tfr);
}
