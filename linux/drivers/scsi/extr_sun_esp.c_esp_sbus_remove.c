
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dev; int * resource; } ;
struct esp {scalar_t__ dmarev; TYPE_1__* host; int dma_regs; int regs; int command_block_dma; int command_block; struct platform_device* dma; } ;
struct TYPE_2__ {unsigned int irq; } ;


 int DMA_CSR ;
 int DMA_INT_ENAB ;
 int SBUS_ESP_REG_SIZE ;
 struct esp* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int dma_read32 (int ) ;
 int dma_write32 (int,int ) ;
 scalar_t__ dvmahme ;
 int free_irq (unsigned int,struct esp*) ;
 int of_iounmap (int *,int ,int ) ;
 int put_device (int *) ;
 int resource_size (int *) ;
 int scsi_esp_unregister (struct esp*) ;
 int scsi_host_put (TYPE_1__*) ;

__attribute__((used)) static int esp_sbus_remove(struct platform_device *op)
{
 struct esp *esp = dev_get_drvdata(&op->dev);
 struct platform_device *dma_of = esp->dma;
 unsigned int irq = esp->host->irq;
 bool is_hme;
 u32 val;

 scsi_esp_unregister(esp);


 val = dma_read32(DMA_CSR);
 dma_write32(val & ~DMA_INT_ENAB, DMA_CSR);

 free_irq(irq, esp);

 is_hme = (esp->dmarev == dvmahme);

 dma_free_coherent(&op->dev, 16,
     esp->command_block,
     esp->command_block_dma);
 of_iounmap(&op->resource[(is_hme ? 1 : 0)], esp->regs,
     SBUS_ESP_REG_SIZE);
 of_iounmap(&dma_of->resource[0], esp->dma_regs,
     resource_size(&dma_of->resource[0]));

 scsi_host_put(esp->host);

 dev_set_drvdata(&op->dev, ((void*)0));

 put_device(&dma_of->dev);

 return 0;
}
