
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_template {int dummy; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct esp {int scsi_id; int scsi_id_mask; int cfreq; void* regs; void* dma_regs; int command_block_dma; int command_block; int * dev; struct Scsi_Host* host; int * ops; } ;
struct Scsi_Host {int max_id; int this_id; int irq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 int dev_set_drvdata (int *,struct esp*) ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int free_irq (int ,struct esp*) ;
 void* ioremap_nocache (int ,int) ;
 int iounmap (void*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int request_irq (int ,int ,int ,char*,struct esp*) ;
 int scsi_esp_intr ;
 int scsi_esp_register (struct esp*) ;
 struct scsi_host_template scsi_esp_template ;
 struct Scsi_Host* scsi_host_alloc (struct scsi_host_template*,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 struct esp* shost_priv (struct Scsi_Host*) ;
 int sun3x_esp_ops ;

__attribute__((used)) static int esp_sun3x_probe(struct platform_device *dev)
{
 struct scsi_host_template *tpnt = &scsi_esp_template;
 struct Scsi_Host *host;
 struct esp *esp;
 struct resource *res;
 int err = -ENOMEM;

 host = scsi_host_alloc(tpnt, sizeof(struct esp));
 if (!host)
  goto fail;

 host->max_id = 8;
 esp = shost_priv(host);

 esp->host = host;
 esp->dev = &dev->dev;
 esp->ops = &sun3x_esp_ops;

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (!res || !res->start)
  goto fail_unlink;

 esp->regs = ioremap_nocache(res->start, 0x20);
 if (!esp->regs)
  goto fail_unmap_regs;

 res = platform_get_resource(dev, IORESOURCE_MEM, 1);
 if (!res || !res->start)
  goto fail_unmap_regs;

 esp->dma_regs = ioremap_nocache(res->start, 0x10);

 esp->command_block = dma_alloc_coherent(esp->dev, 16,
      &esp->command_block_dma,
      GFP_KERNEL);
 if (!esp->command_block)
  goto fail_unmap_regs_dma;

 host->irq = platform_get_irq(dev, 0);
 err = request_irq(host->irq, scsi_esp_intr, IRQF_SHARED,
     "SUN3X ESP", esp);
 if (err < 0)
  goto fail_unmap_command_block;

 esp->scsi_id = 7;
 esp->host->this_id = esp->scsi_id;
 esp->scsi_id_mask = (1 << esp->scsi_id);
 esp->cfreq = 20000000;

 dev_set_drvdata(&dev->dev, esp);

 err = scsi_esp_register(esp);
 if (err)
  goto fail_free_irq;

 return 0;

fail_free_irq:
 free_irq(host->irq, esp);
fail_unmap_command_block:
 dma_free_coherent(esp->dev, 16,
     esp->command_block,
     esp->command_block_dma);
fail_unmap_regs_dma:
 iounmap(esp->dma_regs);
fail_unmap_regs:
 iounmap(esp->regs);
fail_unlink:
 scsi_host_put(host);
fail:
 return err;
}
