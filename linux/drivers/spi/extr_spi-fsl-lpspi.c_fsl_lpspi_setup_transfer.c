
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {int bits_per_word; scalar_t__ len; scalar_t__ speed_hz; } ;
struct spi_device {int bits_per_word; scalar_t__ max_speed_hz; int chip_select; int mode; int controller; } ;
struct spi_controller {int dummy; } ;
struct TYPE_2__ {int bpw; scalar_t__ speed_hz; int chip_select; int mode; } ;
struct fsl_lpspi_data {scalar_t__ txfifosize; scalar_t__ watermark; int usedma; int tx; int rx; TYPE_1__ config; } ;


 int EINVAL ;
 int fsl_lpspi_buf_rx_u16 ;
 int fsl_lpspi_buf_rx_u32 ;
 int fsl_lpspi_buf_rx_u8 ;
 int fsl_lpspi_buf_tx_u16 ;
 int fsl_lpspi_buf_tx_u32 ;
 int fsl_lpspi_buf_tx_u8 ;
 scalar_t__ fsl_lpspi_can_dma (struct spi_controller*,struct spi_device*,struct spi_transfer*) ;
 int fsl_lpspi_config (struct fsl_lpspi_data*) ;
 struct fsl_lpspi_data* spi_controller_get_devdata (int ) ;

__attribute__((used)) static int fsl_lpspi_setup_transfer(struct spi_controller *controller,
         struct spi_device *spi,
         struct spi_transfer *t)
{
 struct fsl_lpspi_data *fsl_lpspi =
    spi_controller_get_devdata(spi->controller);

 if (t == ((void*)0))
  return -EINVAL;

 fsl_lpspi->config.mode = spi->mode;
 fsl_lpspi->config.bpw = t->bits_per_word;
 fsl_lpspi->config.speed_hz = t->speed_hz;
 fsl_lpspi->config.chip_select = spi->chip_select;

 if (!fsl_lpspi->config.speed_hz)
  fsl_lpspi->config.speed_hz = spi->max_speed_hz;
 if (!fsl_lpspi->config.bpw)
  fsl_lpspi->config.bpw = spi->bits_per_word;


 if (fsl_lpspi->config.bpw <= 8) {
  fsl_lpspi->rx = fsl_lpspi_buf_rx_u8;
  fsl_lpspi->tx = fsl_lpspi_buf_tx_u8;
 } else if (fsl_lpspi->config.bpw <= 16) {
  fsl_lpspi->rx = fsl_lpspi_buf_rx_u16;
  fsl_lpspi->tx = fsl_lpspi_buf_tx_u16;
 } else {
  fsl_lpspi->rx = fsl_lpspi_buf_rx_u32;
  fsl_lpspi->tx = fsl_lpspi_buf_tx_u32;
 }

 if (t->len <= fsl_lpspi->txfifosize)
  fsl_lpspi->watermark = t->len;
 else
  fsl_lpspi->watermark = fsl_lpspi->txfifosize;

 if (fsl_lpspi_can_dma(controller, spi, t))
  fsl_lpspi->usedma = 1;
 else
  fsl_lpspi->usedma = 0;

 return fsl_lpspi_config(fsl_lpspi);
}
