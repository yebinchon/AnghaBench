
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pnv_php_slot {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct msix_entry {int entry; int vector; } ;


 int ERANGE ;
 int PCI_EXP_FLAGS ;
 int PCI_EXP_FLAGS_IRQ ;
 int pci_enable_msix_exact (struct pci_dev*,struct msix_entry*,int) ;
 int pci_msix_vec_count (struct pci_dev*) ;
 int pci_warn (struct pci_dev*,char*,int) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;

__attribute__((used)) static int pnv_php_enable_msix(struct pnv_php_slot *php_slot)
{
 struct pci_dev *pdev = php_slot->pdev;
 struct msix_entry entry;
 int nr_entries, ret;
 u16 pcie_flag;


 nr_entries = pci_msix_vec_count(pdev);
 if (nr_entries < 0)
  return nr_entries;


 pcie_capability_read_word(pdev, PCI_EXP_FLAGS, &pcie_flag);
 entry.entry = (pcie_flag & PCI_EXP_FLAGS_IRQ) >> 9;
 if (entry.entry >= nr_entries)
  return -ERANGE;


 ret = pci_enable_msix_exact(pdev, &entry, 1);
 if (ret) {
  pci_warn(pdev, "Error %d enabling MSIx\n", ret);
  return ret;
 }

 return entry.vector;
}
