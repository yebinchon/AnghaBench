
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct hpx_type2 {int revision; int pci_exp_devctl_and; int pci_exp_devctl_or; int pci_exp_lnkctl_and; int pci_exp_lnkctl_or; int unc_err_mask_and; int unc_err_mask_or; int unc_err_sever_and; int unc_err_sever_or; int cor_err_mask_and; int cor_err_mask_or; int adv_err_cap_and; int adv_err_cap_or; } ;


 scalar_t__ PCI_ERR_CAP ;
 int PCI_ERR_CAP_ECRC_CHKC ;
 int PCI_ERR_CAP_ECRC_CHKE ;
 int PCI_ERR_CAP_ECRC_GENC ;
 int PCI_ERR_CAP_ECRC_GENE ;
 scalar_t__ PCI_ERR_COR_MASK ;
 scalar_t__ PCI_ERR_UNCOR_MASK ;
 scalar_t__ PCI_ERR_UNCOR_SEVER ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_PAYLOAD ;
 int PCI_EXP_DEVCTL_READRQ ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_RCB ;
 int PCI_EXT_CAP_ID_ERR ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_warn (struct pci_dev*,char*,int) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;
 scalar_t__ pcie_cap_has_lnkctl (struct pci_dev*) ;
 int pcie_capability_clear_and_set_word (struct pci_dev*,int ,int,int) ;
 scalar_t__ pcie_root_rcb_set (struct pci_dev*) ;

__attribute__((used)) static void program_hpx_type2(struct pci_dev *dev, struct hpx_type2 *hpx)
{
 int pos;
 u32 reg32;

 if (!hpx)
  return;

 if (!pci_is_pcie(dev))
  return;

 if (hpx->revision > 1) {
  pci_warn(dev, "PCIe settings rev %d not supported\n",
    hpx->revision);
  return;
 }






 hpx->pci_exp_devctl_and |= PCI_EXP_DEVCTL_PAYLOAD |
        PCI_EXP_DEVCTL_READRQ;
 hpx->pci_exp_devctl_or &= ~(PCI_EXP_DEVCTL_PAYLOAD |
        PCI_EXP_DEVCTL_READRQ);


 pcie_capability_clear_and_set_word(dev, PCI_EXP_DEVCTL,
   ~hpx->pci_exp_devctl_and, hpx->pci_exp_devctl_or);


 if (pcie_cap_has_lnkctl(dev)) {





  hpx->pci_exp_lnkctl_and |= PCI_EXP_LNKCTL_RCB;
  hpx->pci_exp_lnkctl_or &= ~PCI_EXP_LNKCTL_RCB;
  if (pcie_root_rcb_set(dev))
   hpx->pci_exp_lnkctl_or |= PCI_EXP_LNKCTL_RCB;

  pcie_capability_clear_and_set_word(dev, PCI_EXP_LNKCTL,
   ~hpx->pci_exp_lnkctl_and, hpx->pci_exp_lnkctl_or);
 }


 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ERR);
 if (!pos)
  return;


 pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_MASK, &reg32);
 reg32 = (reg32 & hpx->unc_err_mask_and) | hpx->unc_err_mask_or;
 pci_write_config_dword(dev, pos + PCI_ERR_UNCOR_MASK, reg32);


 pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_SEVER, &reg32);
 reg32 = (reg32 & hpx->unc_err_sever_and) | hpx->unc_err_sever_or;
 pci_write_config_dword(dev, pos + PCI_ERR_UNCOR_SEVER, reg32);


 pci_read_config_dword(dev, pos + PCI_ERR_COR_MASK, &reg32);
 reg32 = (reg32 & hpx->cor_err_mask_and) | hpx->cor_err_mask_or;
 pci_write_config_dword(dev, pos + PCI_ERR_COR_MASK, reg32);


 pci_read_config_dword(dev, pos + PCI_ERR_CAP, &reg32);
 reg32 = (reg32 & hpx->adv_err_cap_and) | hpx->adv_err_cap_or;


 if (!(reg32 & PCI_ERR_CAP_ECRC_GENC))
  reg32 &= ~PCI_ERR_CAP_ECRC_GENE;
 if (!(reg32 & PCI_ERR_CAP_ECRC_CHKC))
  reg32 &= ~PCI_ERR_CAP_ECRC_CHKE;
 pci_write_config_dword(dev, pos + PCI_ERR_CAP, reg32);







}
