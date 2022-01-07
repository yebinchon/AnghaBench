
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_5__ {int of_node; } ;
struct spi_controller {int can_dma; TYPE_3__* dma_rx; TYPE_3__* dma_tx; TYPE_1__ dev; } ;
struct dma_slave_config {void* dst_addr_width; void* dst_addr; void* src_addr_width; void* src_addr; } ;
struct device {int dummy; } ;
struct bcm2835_spi {void** clear_rx_desc; scalar_t__ clear_rx_addr; int clear_rx_cs; void* fill_tx_desc; scalar_t__ fill_tx_addr; } ;
typedef scalar_t__ dma_addr_t ;
typedef int __be32 ;
struct TYPE_7__ {TYPE_2__* device; } ;
struct TYPE_6__ {int dev; } ;


 scalar_t__ BCM2835_SPI_CS ;
 scalar_t__ BCM2835_SPI_FIFO ;
 int BCM2835_SPI_NUM_CS ;
 int DMA_ATTR_SKIP_CPU_SYNC ;
 int DMA_MEM_TO_DEV ;
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int DMA_TO_DEVICE ;
 int ZERO_PAGE (int ) ;
 int bcm2835_dma_release (struct spi_controller*,struct bcm2835_spi*) ;
 int bcm2835_spi_can_dma ;
 scalar_t__ be32_to_cpup (int const*) ;
 int dev_err (struct device*,char*,...) ;
 scalar_t__ dma_map_page_attrs (int ,int ,int ,int,int ,int ) ;
 scalar_t__ dma_map_single (int ,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 void* dma_request_slave_channel (struct device*,char*) ;
 int dmaengine_desc_set_reuse (void*) ;
 void* dmaengine_prep_dma_cyclic (TYPE_3__*,scalar_t__,int,int ,int ,int ) ;
 int dmaengine_slave_config (TYPE_3__*,struct dma_slave_config*) ;
 int * of_get_address (int ,int ,int *,int *) ;

__attribute__((used)) static void bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
        struct bcm2835_spi *bs)
{
 struct dma_slave_config slave_config;
 const __be32 *addr;
 dma_addr_t dma_reg_base;
 int ret, i;


 addr = of_get_address(ctlr->dev.of_node, 0, ((void*)0), ((void*)0));
 if (!addr) {
  dev_err(dev, "could not get DMA-register address - not using dma mode\n");
  goto err;
 }
 dma_reg_base = be32_to_cpup(addr);


 ctlr->dma_tx = dma_request_slave_channel(dev, "tx");
 if (!ctlr->dma_tx) {
  dev_err(dev, "no tx-dma configuration found - not using dma mode\n");
  goto err;
 }
 ctlr->dma_rx = dma_request_slave_channel(dev, "rx");
 if (!ctlr->dma_rx) {
  dev_err(dev, "no rx-dma configuration found - not using dma mode\n");
  goto err_release;
 }






 slave_config.dst_addr = (u32)(dma_reg_base + BCM2835_SPI_FIFO);
 slave_config.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;

 ret = dmaengine_slave_config(ctlr->dma_tx, &slave_config);
 if (ret)
  goto err_config;

 bs->fill_tx_addr = dma_map_page_attrs(ctlr->dma_tx->device->dev,
           ZERO_PAGE(0), 0, sizeof(u32),
           DMA_TO_DEVICE,
           DMA_ATTR_SKIP_CPU_SYNC);
 if (dma_mapping_error(ctlr->dma_tx->device->dev, bs->fill_tx_addr)) {
  dev_err(dev, "cannot map zero page - not using DMA mode\n");
  bs->fill_tx_addr = 0;
  goto err_release;
 }

 bs->fill_tx_desc = dmaengine_prep_dma_cyclic(ctlr->dma_tx,
           bs->fill_tx_addr,
           sizeof(u32), 0,
           DMA_MEM_TO_DEV, 0);
 if (!bs->fill_tx_desc) {
  dev_err(dev, "cannot prepare fill_tx_desc - not using DMA mode\n");
  goto err_release;
 }

 ret = dmaengine_desc_set_reuse(bs->fill_tx_desc);
 if (ret) {
  dev_err(dev, "cannot reuse fill_tx_desc - not using DMA mode\n");
  goto err_release;
 }






 slave_config.src_addr = (u32)(dma_reg_base + BCM2835_SPI_FIFO);
 slave_config.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 slave_config.dst_addr = (u32)(dma_reg_base + BCM2835_SPI_CS);
 slave_config.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;

 ret = dmaengine_slave_config(ctlr->dma_rx, &slave_config);
 if (ret)
  goto err_config;

 bs->clear_rx_addr = dma_map_single(ctlr->dma_rx->device->dev,
        bs->clear_rx_cs,
        sizeof(bs->clear_rx_cs),
        DMA_TO_DEVICE);
 if (dma_mapping_error(ctlr->dma_rx->device->dev, bs->clear_rx_addr)) {
  dev_err(dev, "cannot map clear_rx_cs - not using DMA mode\n");
  bs->clear_rx_addr = 0;
  goto err_release;
 }

 for (i = 0; i < BCM2835_SPI_NUM_CS; i++) {
  bs->clear_rx_desc[i] = dmaengine_prep_dma_cyclic(ctlr->dma_rx,
        bs->clear_rx_addr + i * sizeof(u32),
        sizeof(u32), 0,
        DMA_MEM_TO_DEV, 0);
  if (!bs->clear_rx_desc[i]) {
   dev_err(dev, "cannot prepare clear_rx_desc - not using DMA mode\n");
   goto err_release;
  }

  ret = dmaengine_desc_set_reuse(bs->clear_rx_desc[i]);
  if (ret) {
   dev_err(dev, "cannot reuse clear_rx_desc - not using DMA mode\n");
   goto err_release;
  }
 }


 ctlr->can_dma = bcm2835_spi_can_dma;

 return;

err_config:
 dev_err(dev, "issue configuring dma: %d - not using DMA mode\n",
  ret);
err_release:
 bcm2835_dma_release(ctlr, bs);
err:
 return;
}
