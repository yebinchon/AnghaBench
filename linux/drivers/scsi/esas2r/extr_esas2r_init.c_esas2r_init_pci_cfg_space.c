
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct esas2r_adapter {int pcid; } ;


 int ESAS2R_LOG_INFO ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_READRQ ;
 int PCI_EXP_DEVCTL_READRQ_512B ;
 int esas2r_log (int ,char*) ;
 scalar_t__ pci_is_pcie (int ) ;
 int pcie_capability_read_word (int ,int ,int*) ;
 int pcie_capability_write_word (int ,int ,int) ;

__attribute__((used)) static void esas2r_init_pci_cfg_space(struct esas2r_adapter *a)
{
 if (pci_is_pcie(a->pcid)) {
  u16 devcontrol;

  pcie_capability_read_word(a->pcid, PCI_EXP_DEVCTL, &devcontrol);

  if ((devcontrol & PCI_EXP_DEVCTL_READRQ) >
       PCI_EXP_DEVCTL_READRQ_512B) {
   esas2r_log(ESAS2R_LOG_INFO,
       "max read request size > 512B");

   devcontrol &= ~PCI_EXP_DEVCTL_READRQ;
   devcontrol |= PCI_EXP_DEVCTL_READRQ_512B;
   pcie_capability_write_word(a->pcid, PCI_EXP_DEVCTL,
         devcontrol);
  }
 }
}
