
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pci_power_t ;


 int intel_mid_pci_set_power_state (struct pci_dev*,int ) ;

__attribute__((used)) static int mid_pci_set_power_state(struct pci_dev *pdev, pci_power_t state)
{
 return intel_mid_pci_set_power_state(pdev, state);
}
