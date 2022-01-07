
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sg_table {int nents; int sgl; } ;
struct rspi_data {unsigned int tx_irq; unsigned int rx_irq; TYPE_1__* ctlr; scalar_t__ dma_callbacked; int wait; } ;
struct dma_async_tx_descriptor {struct rspi_data* callback_param; int * callback; } ;
typedef int dma_cookie_t ;
struct TYPE_2__ {int dev; int dma_rx; int dma_tx; } ;


 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int EAGAIN ;
 int ETIMEDOUT ;
 int HZ ;
 int SPCR_SPRIE ;
 int SPCR_SPTIE ;
 int dev_driver_string (int *) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int disable_irq (unsigned int) ;
 int dma_async_issue_pending (int ) ;
 scalar_t__ dma_submit_error (int) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (int ,int ,int ,int ,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dmaengine_terminate_all (int ) ;
 int enable_irq (unsigned int) ;
 int pr_warn_once (char*,int ,int ) ;
 int rspi_disable_irq (struct rspi_data*,int ) ;
 void* rspi_dma_complete ;
 int rspi_enable_irq (struct rspi_data*,int ) ;
 int wait_event_interruptible_timeout (int ,scalar_t__,int ) ;

__attribute__((used)) static int rspi_dma_transfer(struct rspi_data *rspi, struct sg_table *tx,
        struct sg_table *rx)
{
 struct dma_async_tx_descriptor *desc_tx = ((void*)0), *desc_rx = ((void*)0);
 u8 irq_mask = 0;
 unsigned int other_irq = 0;
 dma_cookie_t cookie;
 int ret;


 if (rx) {
  desc_rx = dmaengine_prep_slave_sg(rspi->ctlr->dma_rx, rx->sgl,
     rx->nents, DMA_DEV_TO_MEM,
     DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
  if (!desc_rx) {
   ret = -EAGAIN;
   goto no_dma_rx;
  }

  desc_rx->callback = rspi_dma_complete;
  desc_rx->callback_param = rspi;
  cookie = dmaengine_submit(desc_rx);
  if (dma_submit_error(cookie)) {
   ret = cookie;
   goto no_dma_rx;
  }

  irq_mask |= SPCR_SPRIE;
 }

 if (tx) {
  desc_tx = dmaengine_prep_slave_sg(rspi->ctlr->dma_tx, tx->sgl,
     tx->nents, DMA_MEM_TO_DEV,
     DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
  if (!desc_tx) {
   ret = -EAGAIN;
   goto no_dma_tx;
  }

  if (rx) {

   desc_tx->callback = ((void*)0);
  } else {
   desc_tx->callback = rspi_dma_complete;
   desc_tx->callback_param = rspi;
  }
  cookie = dmaengine_submit(desc_tx);
  if (dma_submit_error(cookie)) {
   ret = cookie;
   goto no_dma_tx;
  }

  irq_mask |= SPCR_SPTIE;
 }





 if (tx)
  disable_irq(other_irq = rspi->tx_irq);
 if (rx && rspi->rx_irq != other_irq)
  disable_irq(rspi->rx_irq);

 rspi_enable_irq(rspi, irq_mask);
 rspi->dma_callbacked = 0;


 if (rx)
  dma_async_issue_pending(rspi->ctlr->dma_rx);
 if (tx)
  dma_async_issue_pending(rspi->ctlr->dma_tx);

 ret = wait_event_interruptible_timeout(rspi->wait,
            rspi->dma_callbacked, HZ);
 if (ret > 0 && rspi->dma_callbacked) {
  ret = 0;
 } else {
  if (!ret) {
   dev_err(&rspi->ctlr->dev, "DMA timeout\n");
   ret = -ETIMEDOUT;
  }
  if (tx)
   dmaengine_terminate_all(rspi->ctlr->dma_tx);
  if (rx)
   dmaengine_terminate_all(rspi->ctlr->dma_rx);
 }

 rspi_disable_irq(rspi, irq_mask);

 if (tx)
  enable_irq(rspi->tx_irq);
 if (rx && rspi->rx_irq != other_irq)
  enable_irq(rspi->rx_irq);

 return ret;

no_dma_tx:
 if (rx)
  dmaengine_terminate_all(rspi->ctlr->dma_rx);
no_dma_rx:
 if (ret == -EAGAIN) {
  pr_warn_once("%s %s: DMA not available, falling back to PIO\n",
        dev_driver_string(&rspi->ctlr->dev),
        dev_name(&rspi->ctlr->dev));
 }
 return ret;
}
