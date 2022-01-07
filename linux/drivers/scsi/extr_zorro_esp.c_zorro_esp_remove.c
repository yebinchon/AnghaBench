
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zorro_esp_priv {int board_base; scalar_t__ zorro3; struct esp* esp; } ;
struct zorro_dev {int dev; } ;
struct esp {int regs; int dma_regs; int command_block_dma; int command_block; int dev; struct Scsi_Host* host; } ;
struct Scsi_Host {int base; int irq; } ;


 struct zorro_esp_priv* dev_get_drvdata (int *) ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int free_irq (int ,struct esp*) ;
 int iounmap (int ) ;
 int kfree (struct zorro_esp_priv*) ;
 int scsi_esp_unregister (struct esp*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int zorro_release_device (struct zorro_dev*) ;

__attribute__((used)) static void zorro_esp_remove(struct zorro_dev *z)
{
 struct zorro_esp_priv *zep = dev_get_drvdata(&z->dev);
 struct esp *esp = zep->esp;
 struct Scsi_Host *host = esp->host;

 scsi_esp_unregister(esp);

 free_irq(host->irq, esp);
 dma_free_coherent(esp->dev, 16,
     esp->command_block,
     esp->command_block_dma);

 if (zep->zorro3) {
  iounmap(zep->board_base);
  iounmap(esp->dma_regs);
 }

 if (host->base > 0xffffff)
  iounmap(esp->regs);

 scsi_host_put(host);

 zorro_release_device(z);

 kfree(zep);
}
