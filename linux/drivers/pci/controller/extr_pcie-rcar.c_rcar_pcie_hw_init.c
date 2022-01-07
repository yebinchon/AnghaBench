
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_pcie {int dummy; } ;


 int CFINIT ;
 int CONFIG_PCI_MSI ;
 int IDSETR1 ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ PCIEINTXR ;
 int PCIEMSITXR ;
 int PCIEMSR ;
 int PCIETCTLR ;
 int PCI_CAP_ID_EXP ;
 int PCI_CLASS_BRIDGE_PCI ;
 int PCI_EXP_FLAGS ;
 int PCI_EXP_FLAGS_TYPE ;
 int PCI_EXP_LNKCAP ;
 int PCI_EXP_LNKCAP_DLLLARC ;
 int PCI_EXP_SLTCAP ;
 int PCI_EXP_SLTCAP_PSN ;
 int PCI_EXP_TYPE_ROOT_PORT ;
 int PCI_HEADER_TYPE ;
 int PCI_HEADER_TYPE_BRIDGE ;
 int PCI_SECONDARY_BUS ;
 int PCI_SUBORDINATE_BUS ;
 scalar_t__ RCONF (int ) ;
 scalar_t__ REXPCAP (int ) ;
 scalar_t__ RVCCAP (int ) ;
 scalar_t__ TLCTLR ;
 int rcar_pci_write_reg (struct rcar_pcie*,int,int ) ;
 int rcar_pcie_wait_for_dl (struct rcar_pcie*) ;
 int rcar_pcie_wait_for_phyrdy (struct rcar_pcie*) ;
 int rcar_rmw32 (struct rcar_pcie*,scalar_t__,int,int) ;
 int wmb () ;

__attribute__((used)) static int rcar_pcie_hw_init(struct rcar_pcie *pcie)
{
 int err;


 rcar_pci_write_reg(pcie, 0, PCIETCTLR);


 rcar_pci_write_reg(pcie, 1, PCIEMSR);

 err = rcar_pcie_wait_for_phyrdy(pcie);
 if (err)
  return err;






 rcar_pci_write_reg(pcie, PCI_CLASS_BRIDGE_PCI << 16, IDSETR1);





 rcar_rmw32(pcie, RCONF(PCI_SECONDARY_BUS), 0xff, 1);
 rcar_rmw32(pcie, RCONF(PCI_SUBORDINATE_BUS), 0xff, 1);


 rcar_rmw32(pcie, REXPCAP(0), 0xff, PCI_CAP_ID_EXP);
 rcar_rmw32(pcie, REXPCAP(PCI_EXP_FLAGS),
  PCI_EXP_FLAGS_TYPE, PCI_EXP_TYPE_ROOT_PORT << 4);
 rcar_rmw32(pcie, RCONF(PCI_HEADER_TYPE), 0x7f,
  PCI_HEADER_TYPE_BRIDGE);


 rcar_rmw32(pcie, REXPCAP(PCI_EXP_LNKCAP), PCI_EXP_LNKCAP_DLLLARC,
  PCI_EXP_LNKCAP_DLLLARC);


 rcar_rmw32(pcie, REXPCAP(PCI_EXP_SLTCAP), PCI_EXP_SLTCAP_PSN, 0);


 rcar_rmw32(pcie, TLCTLR + 1, 0x3f, 50);


 rcar_rmw32(pcie, RVCCAP(0), 0xfff00000, 0);


 if (IS_ENABLED(CONFIG_PCI_MSI))
  rcar_pci_write_reg(pcie, 0x801f0000, PCIEMSITXR);


 rcar_pci_write_reg(pcie, CFINIT, PCIETCTLR);


 err = rcar_pcie_wait_for_dl(pcie);
 if (err)
  return err;


 rcar_rmw32(pcie, PCIEINTXR, 0, 0xF << 8);

 wmb();

 return 0;
}
