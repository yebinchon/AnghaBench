
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t jsm_io_slot_reset(struct pci_dev *pdev)
{
 int rc;

 rc = pci_enable_device(pdev);

 if (rc)
  return PCI_ERS_RESULT_DISCONNECT;

 pci_set_master(pdev);

 return PCI_ERS_RESULT_RECOVERED;
}
