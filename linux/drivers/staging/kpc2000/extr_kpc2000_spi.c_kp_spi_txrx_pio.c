
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {unsigned int len; int * tx_buf; int * rx_buf; } ;
struct spi_device {struct kp_spi_controller_state* controller_state; } ;
struct kp_spi_controller_state {int dummy; } ;


 int KP_SPI_REG_RXDATA ;
 int KP_SPI_REG_STATUS ;
 int KP_SPI_REG_STATUS_EOT ;
 int KP_SPI_REG_STATUS_RXS ;
 int KP_SPI_REG_STATUS_TXS ;
 int KP_SPI_REG_TXDATA ;
 char kp_spi_read_reg (struct kp_spi_controller_state*,int ) ;
 int kp_spi_wait_for_reg_bit (struct kp_spi_controller_state*,int ,int ) ;
 int kp_spi_write_reg (struct kp_spi_controller_state*,int ,int) ;

__attribute__((used)) static unsigned
kp_spi_txrx_pio(struct spi_device *spidev, struct spi_transfer *transfer)
{
 struct kp_spi_controller_state *cs = spidev->controller_state;
 unsigned int count = transfer->len;
 unsigned int c = count;

 int i;
 int res;
 u8 *rx = transfer->rx_buf;
 const u8 *tx = transfer->tx_buf;
 int processed = 0;

 if (tx) {
  for (i = 0 ; i < c ; i++) {
   char val = *tx++;

   res = kp_spi_wait_for_reg_bit(cs, KP_SPI_REG_STATUS,
            KP_SPI_REG_STATUS_TXS);
   if (res < 0)
    goto out;

   kp_spi_write_reg(cs, KP_SPI_REG_TXDATA, val);
   processed++;
  }
 }
 else if (rx) {
  for (i = 0 ; i < c ; i++) {
   char test = 0;

   kp_spi_write_reg(cs, KP_SPI_REG_TXDATA, 0x00);
   res = kp_spi_wait_for_reg_bit(cs, KP_SPI_REG_STATUS,
            KP_SPI_REG_STATUS_RXS);
   if (res < 0)
    goto out;

   test = kp_spi_read_reg(cs, KP_SPI_REG_RXDATA);
   *rx++ = test;
   processed++;
  }
 }

 if (kp_spi_wait_for_reg_bit(cs, KP_SPI_REG_STATUS,
        KP_SPI_REG_STATUS_EOT) < 0) {


 }

out:
 return processed;
}
