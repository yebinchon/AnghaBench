
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int adapter_t ;


 int __megaraid_shutdown (int *) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void
megaraid_shutdown(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 adapter_t *adapter = (adapter_t *)host->hostdata;

 __megaraid_shutdown(adapter);
}
