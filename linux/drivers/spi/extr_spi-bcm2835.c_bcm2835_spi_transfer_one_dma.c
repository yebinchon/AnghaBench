
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_transfer {int dummy; } ;
struct spi_device {size_t chip_select; } ;
struct spi_controller {int dma_rx; int dma_tx; } ;
struct bcm2835_spi {int tx_len; int tx_dma_active; int rx_dma_active; scalar_t__ rx_buf; int * clear_rx_desc; int fill_tx_desc; scalar_t__ tx_buf; int count_transfer_dma; } ;
typedef int dma_cookie_t ;


 int BCM2835_SPI_CS ;
 int BCM2835_SPI_CS_DMAEN ;
 int BCM2835_SPI_CS_TA ;
 int BCM2835_SPI_DLEN ;
 int bcm2835_spi_prepare_sg (struct spi_controller*,struct spi_device*,struct spi_transfer*,struct bcm2835_spi*,int) ;
 int bcm2835_spi_reset_hw (struct spi_controller*) ;
 int bcm2835_spi_transfer_prologue (struct spi_controller*,struct spi_transfer*,struct bcm2835_spi*,int) ;
 int bcm2835_spi_undo_prologue (struct bcm2835_spi*) ;
 int bcm2835_wr (struct bcm2835_spi*,int ,int) ;
 scalar_t__ cmpxchg (int*,int,int) ;
 int dma_async_issue_pending (int ) ;
 int dma_submit_error (int ) ;
 int dmaengine_submit (int ) ;
 int dmaengine_terminate_async (int ) ;
 int dmaengine_terminate_sync (int ) ;
 int smp_mb () ;
 int smp_wmb () ;
 struct bcm2835_spi* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int bcm2835_spi_transfer_one_dma(struct spi_controller *ctlr,
     struct spi_device *spi,
     struct spi_transfer *tfr,
     u32 cs)
{
 struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);
 dma_cookie_t cookie;
 int ret;


 bs->count_transfer_dma++;





 bcm2835_spi_transfer_prologue(ctlr, tfr, bs, cs);


 if (bs->tx_buf) {
  ret = bcm2835_spi_prepare_sg(ctlr, spi, tfr, bs, 1);
 } else {
  cookie = dmaengine_submit(bs->fill_tx_desc);
  ret = dma_submit_error(cookie);
 }
 if (ret)
  goto err_reset_hw;


 bcm2835_wr(bs, BCM2835_SPI_DLEN, bs->tx_len);


 bcm2835_wr(bs, BCM2835_SPI_CS,
     cs | BCM2835_SPI_CS_TA | BCM2835_SPI_CS_DMAEN);

 bs->tx_dma_active = 1;
 smp_wmb();


 dma_async_issue_pending(ctlr->dma_tx);





 if (bs->rx_buf) {
  ret = bcm2835_spi_prepare_sg(ctlr, spi, tfr, bs, 0);
 } else {
  cookie = dmaengine_submit(bs->clear_rx_desc[spi->chip_select]);
  ret = dma_submit_error(cookie);
 }
 if (ret) {

  dmaengine_terminate_sync(ctlr->dma_tx);
  bs->tx_dma_active = 0;
  goto err_reset_hw;
 }


 dma_async_issue_pending(ctlr->dma_rx);
 bs->rx_dma_active = 1;
 smp_mb();





 if (!bs->rx_buf && !bs->tx_dma_active &&
     cmpxchg(&bs->rx_dma_active, 1, 0)) {
  dmaengine_terminate_async(ctlr->dma_rx);
  bcm2835_spi_reset_hw(ctlr);
 }


 return 1;

err_reset_hw:
 bcm2835_spi_reset_hw(ctlr);
 bcm2835_spi_undo_prologue(bs);
 return ret;
}
