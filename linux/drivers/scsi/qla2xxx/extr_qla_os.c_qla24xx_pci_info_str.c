
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int pci_attr; int pdev; } ;


 int CSRX_PCIX_BUS_MODE_MASK ;
 int PCI_EXP_LNKCAP ;
 int PCI_EXP_LNKCAP_MLW ;
 int PCI_EXP_LNKCAP_SLS ;
 scalar_t__ pci_is_pcie (int ) ;
 int pcie_capability_read_dword (int ,int ,int*) ;
 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static char *
qla24xx_pci_info_str(struct scsi_qla_host *vha, char *str, size_t str_len)
{
 static const char *const pci_bus_modes[] = {
  "33", "66", "100", "133",
 };
 struct qla_hw_data *ha = vha->hw;
 uint32_t pci_bus;

 if (pci_is_pcie(ha->pdev)) {
  uint32_t lstat, lspeed, lwidth;
  const char *speed_str;

  pcie_capability_read_dword(ha->pdev, PCI_EXP_LNKCAP, &lstat);
  lspeed = lstat & PCI_EXP_LNKCAP_SLS;
  lwidth = (lstat & PCI_EXP_LNKCAP_MLW) >> 4;

  switch (lspeed) {
  case 1:
   speed_str = "2.5GT/s";
   break;
  case 2:
   speed_str = "5.0GT/s";
   break;
  case 3:
   speed_str = "8.0GT/s";
   break;
  default:
   speed_str = "<unknown>";
   break;
  }
  snprintf(str, str_len, "PCIe (%s x%d)", speed_str, lwidth);

  return str;
 }

 pci_bus = (ha->pci_attr & CSRX_PCIX_BUS_MODE_MASK) >> 8;
 if (pci_bus == 0 || pci_bus == 8)
  snprintf(str, str_len, "PCI (%s MHz)",
    pci_bus_modes[pci_bus >> 3]);
 else
  snprintf(str, str_len, "PCI-X Mode %d (%s MHz)",
    pci_bus & 4 ? 2 : 1,
    pci_bus_modes[pci_bus & 3]);

 return str;
}
