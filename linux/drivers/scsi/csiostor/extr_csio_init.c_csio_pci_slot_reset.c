
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct csio_hw {int lock; int sm; } ;
typedef int pci_ers_result_t ;


 int CSIO_HWE_PCIERR_SLOT_RESET ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int csio_is_hw_ready (struct csio_hw*) ;
 int csio_post_event (int *,int ) ;
 int dev_err (int *,char*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct csio_hw* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static pci_ers_result_t
csio_pci_slot_reset(struct pci_dev *pdev)
{
 struct csio_hw *hw = pci_get_drvdata(pdev);
 int ready;

 if (pci_enable_device(pdev)) {
  dev_err(&pdev->dev, "cannot re-enable device in slot reset\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }

 pci_set_master(pdev);
 pci_restore_state(pdev);
 pci_save_state(pdev);




 spin_lock_irq(&hw->lock);
 csio_post_event(&hw->sm, CSIO_HWE_PCIERR_SLOT_RESET);
 ready = csio_is_hw_ready(hw);
 spin_unlock_irq(&hw->lock);

 if (ready) {
  return PCI_ERS_RESULT_RECOVERED;
 } else {
  dev_err(&pdev->dev, "Can't initialize HW when in slot reset\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }
}
