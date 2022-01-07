
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int nents; int sgl; } ;
struct TYPE_3__ {int nents; int sgl; } ;
struct spi_transfer {int len; TYPE_2__ tx_sg; TYPE_1__ rx_sg; int tx_buf; int rx_buf; } ;
struct spi_device {size_t chip_select; int dev; int master; scalar_t__ controller_data; } ;
struct dma_slave_config {int src_addr_width; int src_maxburst; int dst_addr_width; int dst_maxburst; scalar_t__ dst_addr; int direction; int src_addr; } ;
struct dma_async_tx_descriptor {void* callback_param; int callback; } ;
struct davinci_spi_platform_data {scalar_t__ cshold_bug; } ;
struct davinci_spi_config {scalar_t__ io_type; } ;
struct davinci_spi {int* bytes_per_word; int wcount; int rcount; int (* get_tx ) (struct davinci_spi*) ;scalar_t__ base; int done; int dma_tx; int dma_rx; scalar_t__ pbase; int rx; int tx; struct davinci_spi_platform_data pdata; } ;
typedef int rx_buf_count ;


 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int EIO ;
 int ENOMEM ;
 int HZ ;
 int SPIBUF ;
 scalar_t__ SPIDAT1 ;
 int SPIFLG_TIMEOUT_MASK ;
 scalar_t__ SPIGCR1 ;
 int SPIGCR1_POWERDOWN_MASK ;
 int SPIGCR1_SPIENA_MASK ;
 scalar_t__ SPIINT ;
 int SPIINT_DMA_REQ_EN ;
 int SPIINT_MASKALL ;
 int SPIINT_MASKINT ;
 scalar_t__ SPI_IO_TYPE_POLL ;
 int WARN (int,char*,int ) ;
 int clear_io_bits (scalar_t__,int ) ;
 int cpu_relax () ;
 scalar_t__ davinci_spi_can_dma (int ,struct spi_device*,struct spi_transfer*) ;
 int davinci_spi_check_error (struct davinci_spi*,int) ;
 struct davinci_spi_config davinci_spi_default_cfg ;
 int davinci_spi_dma_rx_callback ;
 int davinci_spi_dma_tx_callback ;
 int davinci_spi_process_events (struct davinci_spi*) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int dma_async_issue_pending (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (int ,int ,int ,int ,int) ;
 int dmaengine_slave_config (int ,struct dma_slave_config*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int ioread32 (scalar_t__) ;
 int iowrite16 (int,scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int reinit_completion (int *) ;
 int set_io_bits (scalar_t__,int ) ;
 struct davinci_spi* spi_master_get_devdata (int ) ;
 int stub2 (struct davinci_spi*) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int davinci_spi_bufs(struct spi_device *spi, struct spi_transfer *t)
{
 struct davinci_spi *dspi;
 int data_type, ret = -ENOMEM;
 u32 tx_data, spidat1;
 u32 errors = 0;
 struct davinci_spi_config *spicfg;
 struct davinci_spi_platform_data *pdata;
 unsigned uninitialized_var(rx_buf_count);

 dspi = spi_master_get_devdata(spi->master);
 pdata = &dspi->pdata;
 spicfg = (struct davinci_spi_config *)spi->controller_data;
 if (!spicfg)
  spicfg = &davinci_spi_default_cfg;


 data_type = dspi->bytes_per_word[spi->chip_select];

 dspi->tx = t->tx_buf;
 dspi->rx = t->rx_buf;
 dspi->wcount = t->len / data_type;
 dspi->rcount = dspi->wcount;

 spidat1 = ioread32(dspi->base + SPIDAT1);

 clear_io_bits(dspi->base + SPIGCR1, SPIGCR1_POWERDOWN_MASK);
 set_io_bits(dspi->base + SPIGCR1, SPIGCR1_SPIENA_MASK);

 reinit_completion(&dspi->done);

 if (!davinci_spi_can_dma(spi->master, spi, t)) {
  if (spicfg->io_type != SPI_IO_TYPE_POLL)
   set_io_bits(dspi->base + SPIINT, SPIINT_MASKINT);

  dspi->wcount--;
  tx_data = dspi->get_tx(dspi);
  spidat1 &= 0xFFFF0000;
  spidat1 |= tx_data & 0xFFFF;
  iowrite32(spidat1, dspi->base + SPIDAT1);
 } else {
  struct dma_slave_config dma_rx_conf = {
   .direction = DMA_DEV_TO_MEM,
   .src_addr = (unsigned long)dspi->pbase + SPIBUF,
   .src_addr_width = data_type,
   .src_maxburst = 1,
  };
  struct dma_slave_config dma_tx_conf = {
   .direction = DMA_MEM_TO_DEV,
   .dst_addr = (unsigned long)dspi->pbase + SPIDAT1,
   .dst_addr_width = data_type,
   .dst_maxburst = 1,
  };
  struct dma_async_tx_descriptor *rxdesc;
  struct dma_async_tx_descriptor *txdesc;

  dmaengine_slave_config(dspi->dma_rx, &dma_rx_conf);
  dmaengine_slave_config(dspi->dma_tx, &dma_tx_conf);

  rxdesc = dmaengine_prep_slave_sg(dspi->dma_rx,
    t->rx_sg.sgl, t->rx_sg.nents, DMA_DEV_TO_MEM,
    DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
  if (!rxdesc)
   goto err_desc;

  if (!t->tx_buf) {





   t->tx_sg.sgl = t->rx_sg.sgl;
   t->tx_sg.nents = t->rx_sg.nents;
  }

  txdesc = dmaengine_prep_slave_sg(dspi->dma_tx,
    t->tx_sg.sgl, t->tx_sg.nents, DMA_MEM_TO_DEV,
    DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
  if (!txdesc)
   goto err_desc;

  rxdesc->callback = davinci_spi_dma_rx_callback;
  rxdesc->callback_param = (void *)dspi;
  txdesc->callback = davinci_spi_dma_tx_callback;
  txdesc->callback_param = (void *)dspi;

  if (pdata->cshold_bug)
   iowrite16(spidat1 >> 16, dspi->base + SPIDAT1 + 2);

  dmaengine_submit(rxdesc);
  dmaengine_submit(txdesc);

  dma_async_issue_pending(dspi->dma_rx);
  dma_async_issue_pending(dspi->dma_tx);

  set_io_bits(dspi->base + SPIINT, SPIINT_DMA_REQ_EN);
 }


 if (spicfg->io_type != SPI_IO_TYPE_POLL) {
  if (wait_for_completion_timeout(&dspi->done, HZ) == 0)
   errors = SPIFLG_TIMEOUT_MASK;
 } else {
  while (dspi->rcount > 0 || dspi->wcount > 0) {
   errors = davinci_spi_process_events(dspi);
   if (errors)
    break;
   cpu_relax();
  }
 }

 clear_io_bits(dspi->base + SPIINT, SPIINT_MASKALL);
 if (davinci_spi_can_dma(spi->master, spi, t))
  clear_io_bits(dspi->base + SPIINT, SPIINT_DMA_REQ_EN);

 clear_io_bits(dspi->base + SPIGCR1, SPIGCR1_SPIENA_MASK);
 set_io_bits(dspi->base + SPIGCR1, SPIGCR1_POWERDOWN_MASK);





 if (errors) {
  ret = davinci_spi_check_error(dspi, errors);
  WARN(!ret, "%s: error reported but no error found!\n",
       dev_name(&spi->dev));
  return ret;
 }

 if (dspi->rcount != 0 || dspi->wcount != 0) {
  dev_err(&spi->dev, "SPI data transfer error\n");
  return -EIO;
 }

 return t->len;

err_desc:
 return ret;
}
