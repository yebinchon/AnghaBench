
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int resource_size_t ;


 int SCI_MAX_CONTROLLERS ;
 int SCI_SCU_BAR ;
 int SCI_SCU_BAR_SIZE ;
 int SCI_SMU_BAR ;
 int SCI_SMU_BAR_SIZE ;
 int pci_resource_len (struct pci_dev*,int) ;

__attribute__((used)) static int num_controllers(struct pci_dev *pdev)
{




 resource_size_t scu_bar_size = pci_resource_len(pdev, SCI_SCU_BAR*2);
 resource_size_t smu_bar_size = pci_resource_len(pdev, SCI_SMU_BAR*2);

 if (scu_bar_size >= SCI_SCU_BAR_SIZE*SCI_MAX_CONTROLLERS &&
     smu_bar_size >= SCI_SMU_BAR_SIZE*SCI_MAX_CONTROLLERS)
  return SCI_MAX_CONTROLLERS;
 else
  return 1;
}
