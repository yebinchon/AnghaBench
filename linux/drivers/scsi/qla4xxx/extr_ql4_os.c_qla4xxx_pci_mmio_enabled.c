
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_NONE ;
 int PCI_ERS_RESULT_RECOVERED ;
 int is_aer_supported (struct scsi_qla_host*) ;
 struct scsi_qla_host* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t
qla4xxx_pci_mmio_enabled(struct pci_dev *pdev)
{
 struct scsi_qla_host *ha = pci_get_drvdata(pdev);

 if (!is_aer_supported(ha))
  return PCI_ERS_RESULT_NONE;

 return PCI_ERS_RESULT_RECOVERED;
}
