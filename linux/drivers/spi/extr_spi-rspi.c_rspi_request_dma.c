
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int can_dma; int * dma_tx; void* dma_rx; } ;
struct rspi_plat_data {unsigned int dma_tx_id; unsigned int dma_rx_id; } ;
struct resource {scalar_t__ start; } ;
struct device {scalar_t__ of_node; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int ENODEV ;
 scalar_t__ RSPI_SPDR ;
 struct rspi_plat_data* dev_get_platdata (struct device*) ;
 int dev_info (struct device*,char*) ;
 int dma_release_channel (int *) ;
 int rspi_can_dma ;
 void* rspi_request_dma_chan (struct device*,int ,unsigned int,scalar_t__) ;

__attribute__((used)) static int rspi_request_dma(struct device *dev, struct spi_controller *ctlr,
       const struct resource *res)
{
 const struct rspi_plat_data *rspi_pd = dev_get_platdata(dev);
 unsigned int dma_tx_id, dma_rx_id;

 if (dev->of_node) {

  dma_tx_id = 0;
  dma_rx_id = 0;
 } else if (rspi_pd && rspi_pd->dma_tx_id && rspi_pd->dma_rx_id) {
  dma_tx_id = rspi_pd->dma_tx_id;
  dma_rx_id = rspi_pd->dma_rx_id;
 } else {

  return 0;
 }

 ctlr->dma_tx = rspi_request_dma_chan(dev, DMA_MEM_TO_DEV, dma_tx_id,
          res->start + RSPI_SPDR);
 if (!ctlr->dma_tx)
  return -ENODEV;

 ctlr->dma_rx = rspi_request_dma_chan(dev, DMA_DEV_TO_MEM, dma_rx_id,
          res->start + RSPI_SPDR);
 if (!ctlr->dma_rx) {
  dma_release_channel(ctlr->dma_tx);
  ctlr->dma_tx = ((void*)0);
  return -ENODEV;
 }

 ctlr->can_dma = rspi_can_dma;
 dev_info(dev, "DMA available");
 return 0;
}
