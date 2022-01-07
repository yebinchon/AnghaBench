
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device_mem (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t aac_pci_slot_reset(struct pci_dev *pdev)
{
 dev_err(&pdev->dev, "aacraid: PCI error - slot reset\n");
 pci_restore_state(pdev);
 if (pci_enable_device(pdev)) {
  dev_warn(&pdev->dev,
   "aacraid: failed to enable slave\n");
  goto fail_device;
 }

 pci_set_master(pdev);

 if (pci_enable_device_mem(pdev)) {
  dev_err(&pdev->dev, "pci_enable_device_mem failed\n");
  goto fail_device;
 }

 return PCI_ERS_RESULT_RECOVERED;

fail_device:
 dev_err(&pdev->dev, "aacraid: PCI error - slot reset failed\n");
 return PCI_ERS_RESULT_DISCONNECT;
}
