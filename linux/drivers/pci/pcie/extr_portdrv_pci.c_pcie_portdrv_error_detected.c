
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;
typedef enum pci_channel_state { ____Placeholder_pci_channel_state } pci_channel_state ;


 int PCI_ERS_RESULT_CAN_RECOVER ;

__attribute__((used)) static pci_ers_result_t pcie_portdrv_error_detected(struct pci_dev *dev,
     enum pci_channel_state error)
{

 return PCI_ERS_RESULT_CAN_RECOVER;
}
