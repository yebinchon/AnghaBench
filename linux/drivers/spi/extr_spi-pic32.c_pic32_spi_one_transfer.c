
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nents; } ;
struct TYPE_3__ {scalar_t__ nents; } ;
struct spi_transfer {scalar_t__ bits_per_word; scalar_t__ speed_hz; int len; scalar_t__ rx_buf; scalar_t__ tx_buf; TYPE_2__ tx_sg; TYPE_1__ rx_sg; } ;
struct spi_master {int dma_tx; int dma_rx; } ;
struct spi_device {int dev; } ;
struct pic32_spi {scalar_t__ bits_per_word; scalar_t__ speed_hz; int len; int xfer_done; int tx_irq; int rx_irq; int fault_irq; void const* rx; void const* rx_end; void const* tx; void const* tx_end; } ;


 int ETIMEDOUT ;
 int HZ ;
 int dev_err (int *,char*) ;
 int dmaengine_terminate_all (int ) ;
 int enable_irq (int ) ;
 int pic32_spi_dma_transfer (struct pic32_spi*,struct spi_transfer*) ;
 int pic32_spi_set_clk_rate (struct pic32_spi*,scalar_t__) ;
 int pic32_spi_set_word_size (struct pic32_spi*,scalar_t__) ;
 int reinit_completion (int *) ;
 struct pic32_spi* spi_master_get_devdata (struct spi_master*) ;
 unsigned long wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int pic32_spi_one_transfer(struct spi_master *master,
      struct spi_device *spi,
      struct spi_transfer *transfer)
{
 struct pic32_spi *pic32s;
 bool dma_issued = 0;
 unsigned long timeout;
 int ret;

 pic32s = spi_master_get_devdata(master);


 if (transfer->bits_per_word &&
     (transfer->bits_per_word != pic32s->bits_per_word)) {
  ret = pic32_spi_set_word_size(pic32s, transfer->bits_per_word);
  if (ret)
   return ret;
  pic32s->bits_per_word = transfer->bits_per_word;
 }


 if (transfer->speed_hz && (transfer->speed_hz != pic32s->speed_hz)) {
  pic32_spi_set_clk_rate(pic32s, transfer->speed_hz);
  pic32s->speed_hz = transfer->speed_hz;
 }

 reinit_completion(&pic32s->xfer_done);


 if (transfer->rx_sg.nents && transfer->tx_sg.nents) {
  ret = pic32_spi_dma_transfer(pic32s, transfer);
  if (ret) {
   dev_err(&spi->dev, "dma submit error\n");
   return ret;
  }


  dma_issued = 1;
 } else {

  pic32s->tx = (const void *)transfer->tx_buf;
  pic32s->rx = (const void *)transfer->rx_buf;
  pic32s->tx_end = pic32s->tx + transfer->len;
  pic32s->rx_end = pic32s->rx + transfer->len;
  pic32s->len = transfer->len;


  enable_irq(pic32s->fault_irq);
  enable_irq(pic32s->rx_irq);
  enable_irq(pic32s->tx_irq);
 }


 timeout = wait_for_completion_timeout(&pic32s->xfer_done, 2 * HZ);
 if (timeout == 0) {
  dev_err(&spi->dev, "wait error/timedout\n");
  if (dma_issued) {
   dmaengine_terminate_all(master->dma_rx);
   dmaengine_terminate_all(master->dma_tx);
  }
  ret = -ETIMEDOUT;
 } else {
  ret = 0;
 }

 return ret;
}
