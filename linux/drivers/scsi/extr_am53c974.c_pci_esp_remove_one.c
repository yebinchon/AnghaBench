
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_esp_priv {struct esp* esp; } ;
struct pci_dev {int dev; int irq; } ;
struct esp {int host; int regs; int command_block_dma; int command_block; } ;


 int dma_free_coherent (int *,int,int ,int ) ;
 int free_irq (int ,struct esp*) ;
 int kfree (struct pci_esp_priv*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct pci_esp_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int scsi_esp_unregister (struct esp*) ;
 int scsi_host_put (int ) ;

__attribute__((used)) static void pci_esp_remove_one(struct pci_dev *pdev)
{
 struct pci_esp_priv *pep = pci_get_drvdata(pdev);
 struct esp *esp = pep->esp;

 scsi_esp_unregister(esp);
 free_irq(pdev->irq, esp);
 pci_set_drvdata(pdev, ((void*)0));
 dma_free_coherent(&pdev->dev, 16, esp->command_block,
     esp->command_block_dma);
 pci_iounmap(pdev, esp->regs);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 kfree(pep);

 scsi_host_put(esp->host);
}
