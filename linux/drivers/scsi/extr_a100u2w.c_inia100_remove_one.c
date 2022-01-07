
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct orc_scb {int dummy; } ;
struct orc_host {int scb_phys; int scb_virt; int escb_phys; int escb_virt; } ;
struct orc_extended_scb {int dummy; } ;
struct Scsi_Host {int io_port; int irq; scalar_t__ hostdata; } ;


 int ORC_MAXQUEUE ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int free_irq (int ,struct Scsi_Host*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int release_region (int ,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static void inia100_remove_one(struct pci_dev *pdev)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct orc_host *host = (struct orc_host *)shost->hostdata;

 scsi_remove_host(shost);

        free_irq(shost->irq, shost);
 dma_free_coherent(&pdev->dev,
   ORC_MAXQUEUE * sizeof(struct orc_extended_scb),
   host->escb_virt, host->escb_phys);
 dma_free_coherent(&pdev->dev,
   ORC_MAXQUEUE * sizeof(struct orc_scb),
   host->scb_virt, host->scb_phys);
        release_region(shost->io_port, 256);

 scsi_host_put(shost);
}
