
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct atp_unit {struct Scsi_Host* host; } ;
struct Scsi_Host {int irq; } ;


 int atp870u_free_tables (struct Scsi_Host*) ;
 int free_irq (int ,struct Scsi_Host*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct atp_unit* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static void atp870u_remove (struct pci_dev *pdev)
{
 struct atp_unit *devext = pci_get_drvdata(pdev);
 struct Scsi_Host *pshost = devext->host;


 scsi_remove_host(pshost);
 free_irq(pshost->irq, pshost);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 atp870u_free_tables(pshost);
 scsi_host_put(pshost);
}
