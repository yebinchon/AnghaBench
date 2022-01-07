
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int INTEL_MPC_REG ;
 int INTEL_MPC_REG_IRBNCE ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static void pci_quirk_enable_intel_rp_mpc_acs(struct pci_dev *dev)
{
 u32 mpc;







 pci_read_config_dword(dev, INTEL_MPC_REG, &mpc);
 if (!(mpc & INTEL_MPC_REG_IRBNCE)) {
  pci_info(dev, "Enabling MPC IRBNCE\n");
  mpc |= INTEL_MPC_REG_IRBNCE;
  pci_write_config_word(dev, INTEL_MPC_REG, mpc);
 }
}
