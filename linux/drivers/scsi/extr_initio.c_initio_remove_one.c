
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct initio_host {int addr; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int free_irq (int ,struct Scsi_Host*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int release_region (int ,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static void initio_remove_one(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 struct initio_host *s = (struct initio_host *)host->hostdata;
 scsi_remove_host(host);
 free_irq(pdev->irq, host);
 release_region(s->addr, 256);
 scsi_host_put(host);
 pci_disable_device(pdev);
}
