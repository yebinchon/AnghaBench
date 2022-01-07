
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_ADAPTER {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_RECOVERED ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static pci_ers_result_t
scsih_pci_mmio_enabled(struct pci_dev *pdev)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);

 ioc_info(ioc, "PCI error: mmio enabled callback!!\n");







 return PCI_ERS_RESULT_RECOVERED;
}
