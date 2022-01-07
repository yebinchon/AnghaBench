
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
typedef int pci_ers_result_t ;
typedef enum pci_channel_state { ____Placeholder_pci_channel_state } pci_channel_state ;


 int PCI_ERS_RESULT_CAN_RECOVER ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int disable_irq (int ) ;
 int pci_channel_io_perm_failure ;
 int pci_disable_device (struct pci_dev*) ;
 int sym2_remove (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t sym2_io_error_detected(struct pci_dev *pdev,
                                         enum pci_channel_state state)
{

 if (state == pci_channel_io_perm_failure) {
  sym2_remove(pdev);
  return PCI_ERS_RESULT_DISCONNECT;
 }

 disable_irq(pdev->irq);
 pci_disable_device(pdev);


 return PCI_ERS_RESULT_CAN_RECOVER;
}
