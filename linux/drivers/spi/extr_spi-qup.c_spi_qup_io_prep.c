
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct spi_transfer {int len; int bits_per_word; int speed_hz; } ;
struct spi_qup {int in_fifo_sz; int w_size; int n_words; int mode; int dev; int cclk; } ;
struct spi_device {int mode; TYPE_1__* master; } ;
struct TYPE_3__ {scalar_t__ cur_msg_mapped; scalar_t__ (* can_dma ) (TYPE_1__*,struct spi_device*,struct spi_transfer*) ;} ;


 int DIV_ROUND_UP (int ,int) ;
 int EIO ;
 int QUP_IO_M_MODE_BAM ;
 int QUP_IO_M_MODE_BLOCK ;
 int QUP_IO_M_MODE_FIFO ;
 int SPI_LOOP ;
 int clk_set_rate (int ,int ) ;
 int dev_err (int ,char*,int,...) ;
 struct spi_qup* spi_master_get_devdata (TYPE_1__*) ;
 scalar_t__ stub1 (TYPE_1__*,struct spi_device*,struct spi_transfer*) ;

__attribute__((used)) static int spi_qup_io_prep(struct spi_device *spi, struct spi_transfer *xfer)
{
 struct spi_qup *controller = spi_master_get_devdata(spi->master);
 int ret;

 if (spi->mode & SPI_LOOP && xfer->len > controller->in_fifo_sz) {
  dev_err(controller->dev, "too big size for loopback %d > %d\n",
   xfer->len, controller->in_fifo_sz);
  return -EIO;
 }

 ret = clk_set_rate(controller->cclk, xfer->speed_hz);
 if (ret) {
  dev_err(controller->dev, "fail to set frequency %d",
   xfer->speed_hz);
  return -EIO;
 }

 controller->w_size = DIV_ROUND_UP(xfer->bits_per_word, 8);
 controller->n_words = xfer->len / controller->w_size;

 if (controller->n_words <= (controller->in_fifo_sz / sizeof(u32)))
  controller->mode = QUP_IO_M_MODE_FIFO;
 else if (spi->master->can_dma &&
   spi->master->can_dma(spi->master, spi, xfer) &&
   spi->master->cur_msg_mapped)
  controller->mode = QUP_IO_M_MODE_BAM;
 else
  controller->mode = QUP_IO_M_MODE_BLOCK;

 return 0;
}
