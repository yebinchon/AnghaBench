
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pci_dev {int dummy; } ;
struct lpfc_hba {struct pci_dev* pcidev; } ;


 int PCI_EXT_CAP_ID_SRIOV ;
 scalar_t__ PCI_SRIOV_TOTAL_VF ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;

uint16_t
lpfc_sli_sriov_nr_virtfn_get(struct lpfc_hba *phba)
{
 struct pci_dev *pdev = phba->pcidev;
 uint16_t nr_virtfn;
 int pos;

 pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
 if (pos == 0)
  return 0;

 pci_read_config_word(pdev, pos + PCI_SRIOV_TOTAL_VF, &nr_virtfn);
 return nr_virtfn;
}
