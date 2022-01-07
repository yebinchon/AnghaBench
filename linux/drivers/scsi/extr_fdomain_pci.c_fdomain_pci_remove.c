
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int fdomain_destroy (struct Scsi_Host*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void fdomain_pci_remove(struct pci_dev *pdev)
{
 struct Scsi_Host *sh = pci_get_drvdata(pdev);

 fdomain_destroy(sh);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
