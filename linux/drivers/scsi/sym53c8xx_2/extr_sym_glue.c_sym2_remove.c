
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int attach_count ;
 int pci_disable_device (struct pci_dev*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int sym_detach (struct Scsi_Host*,struct pci_dev*) ;

__attribute__((used)) static void sym2_remove(struct pci_dev *pdev)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);

 scsi_remove_host(shost);
 sym_detach(shost, pdev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);

 attach_count--;
}
