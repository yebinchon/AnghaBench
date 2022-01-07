
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_ASPMC ;
 int pcie_capability_clear_and_set_word (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void pcie_config_aspm_dev(struct pci_dev *pdev, u32 val)
{
 pcie_capability_clear_and_set_word(pdev, PCI_EXP_LNKCTL,
        PCI_EXP_LNKCTL_ASPMC, val);
}
