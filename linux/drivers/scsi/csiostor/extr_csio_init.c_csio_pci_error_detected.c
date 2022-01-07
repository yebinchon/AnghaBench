
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct csio_hw {int lock; int sm; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int CSIO_HWE_PCIERR_DETECTED ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int csio_intr_disable (struct csio_hw*,int) ;
 int csio_lnodes_block_request (struct csio_hw*) ;
 int csio_lnodes_exit (struct csio_hw*,int ) ;
 int csio_lnodes_unblock_request (struct csio_hw*) ;
 int csio_post_event (int *,int ) ;
 scalar_t__ pci_channel_io_perm_failure ;
 int pci_disable_device (struct pci_dev*) ;
 struct csio_hw* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static pci_ers_result_t
csio_pci_error_detected(struct pci_dev *pdev, pci_channel_state_t state)
{
 struct csio_hw *hw = pci_get_drvdata(pdev);

 csio_lnodes_block_request(hw);
 spin_lock_irq(&hw->lock);





 csio_post_event(&hw->sm, CSIO_HWE_PCIERR_DETECTED);
 spin_unlock_irq(&hw->lock);
 csio_lnodes_unblock_request(hw);
 csio_lnodes_exit(hw, 0);
 csio_intr_disable(hw, 1);
 pci_disable_device(pdev);
 return state == pci_channel_io_perm_failure ?
  PCI_ERS_RESULT_DISCONNECT : PCI_ERS_RESULT_NEED_RESET;
}
