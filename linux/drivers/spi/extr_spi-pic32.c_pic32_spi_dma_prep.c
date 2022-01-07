
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {void* dma_tx; void* dma_rx; } ;
struct pic32_spi {int flags; struct spi_master* master; } ;
struct device {int dummy; } ;
typedef int dma_cap_mask_t ;


 int DMA_SLAVE ;
 int DMA_SLAVE_BUSWIDTH_1_BYTE ;
 int PIC32F_DMA_PREP ;
 int dev_warn (struct device*,char*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_release_channel (void*) ;
 void* dma_request_slave_channel_compat (int ,int *,int *,struct device*,char*) ;
 scalar_t__ pic32_spi_dma_config (struct pic32_spi*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void pic32_spi_dma_prep(struct pic32_spi *pic32s, struct device *dev)
{
 struct spi_master *master = pic32s->master;
 dma_cap_mask_t mask;

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);

 master->dma_rx = dma_request_slave_channel_compat(mask, ((void*)0), ((void*)0),
         dev, "spi-rx");
 if (!master->dma_rx) {
  dev_warn(dev, "RX channel not found.\n");
  goto out_err;
 }

 master->dma_tx = dma_request_slave_channel_compat(mask, ((void*)0), ((void*)0),
         dev, "spi-tx");
 if (!master->dma_tx) {
  dev_warn(dev, "TX channel not found.\n");
  goto out_err;
 }

 if (pic32_spi_dma_config(pic32s, DMA_SLAVE_BUSWIDTH_1_BYTE))
  goto out_err;


 set_bit(PIC32F_DMA_PREP, &pic32s->flags);

 return;

out_err:
 if (master->dma_rx)
  dma_release_channel(master->dma_rx);

 if (master->dma_tx)
  dma_release_channel(master->dma_tx);
}
