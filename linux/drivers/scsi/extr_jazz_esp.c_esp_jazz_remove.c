
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct esp {TYPE_1__* host; int command_block_dma; int command_block; int dev; } ;
struct TYPE_2__ {unsigned int irq; } ;


 struct esp* dev_get_drvdata (int *) ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int free_irq (unsigned int,struct esp*) ;
 int scsi_esp_unregister (struct esp*) ;
 int scsi_host_put (TYPE_1__*) ;

__attribute__((used)) static int esp_jazz_remove(struct platform_device *dev)
{
 struct esp *esp = dev_get_drvdata(&dev->dev);
 unsigned int irq = esp->host->irq;

 scsi_esp_unregister(esp);

 free_irq(irq, esp);
 dma_free_coherent(esp->dev, 16,
     esp->command_block,
     esp->command_block_dma);

 scsi_host_put(esp->host);

 return 0;
}
