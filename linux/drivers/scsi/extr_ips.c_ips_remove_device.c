
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int ips_release (struct Scsi_Host*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void
ips_remove_device(struct pci_dev *pci_dev)
{
 struct Scsi_Host *sh = pci_get_drvdata(pci_dev);

 pci_set_drvdata(pci_dev, ((void*)0));

 ips_release(sh);

 pci_release_regions(pci_dev);
 pci_disable_device(pci_dev);
}
