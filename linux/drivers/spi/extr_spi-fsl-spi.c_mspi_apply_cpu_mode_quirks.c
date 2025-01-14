
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_mpc8xxx_cs {int get_tx; int get_rx; scalar_t__ tx_shift; scalar_t__ rx_shift; } ;
struct spi_device {int mode; } ;
struct mpc8xxx_spi {int get_tx; int get_rx; scalar_t__ tx_shift; scalar_t__ rx_shift; int (* set_shifts ) (scalar_t__*,scalar_t__*,int,int) ;} ;


 int EINVAL ;
 int SPI_LSB_FIRST ;
 int mpc8xxx_spi_rx_buf_u16 ;
 int mpc8xxx_spi_rx_buf_u32 ;
 int mpc8xxx_spi_rx_buf_u8 ;
 int mpc8xxx_spi_tx_buf_u16 ;
 int mpc8xxx_spi_tx_buf_u32 ;
 int mpc8xxx_spi_tx_buf_u8 ;
 int stub1 (scalar_t__*,scalar_t__*,int,int) ;

__attribute__((used)) static int mspi_apply_cpu_mode_quirks(struct spi_mpc8xxx_cs *cs,
    struct spi_device *spi,
    struct mpc8xxx_spi *mpc8xxx_spi,
    int bits_per_word)
{
 cs->rx_shift = 0;
 cs->tx_shift = 0;
 if (bits_per_word <= 8) {
  cs->get_rx = mpc8xxx_spi_rx_buf_u8;
  cs->get_tx = mpc8xxx_spi_tx_buf_u8;
 } else if (bits_per_word <= 16) {
  cs->get_rx = mpc8xxx_spi_rx_buf_u16;
  cs->get_tx = mpc8xxx_spi_tx_buf_u16;
 } else if (bits_per_word <= 32) {
  cs->get_rx = mpc8xxx_spi_rx_buf_u32;
  cs->get_tx = mpc8xxx_spi_tx_buf_u32;
 } else
  return -EINVAL;

 if (mpc8xxx_spi->set_shifts)
  mpc8xxx_spi->set_shifts(&cs->rx_shift, &cs->tx_shift,
     bits_per_word,
     !(spi->mode & SPI_LSB_FIRST));

 mpc8xxx_spi->rx_shift = cs->rx_shift;
 mpc8xxx_spi->tx_shift = cs->tx_shift;
 mpc8xxx_spi->get_rx = cs->get_rx;
 mpc8xxx_spi->get_tx = cs->get_tx;

 return bits_per_word;
}
