
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_pcie {int dummy; } ;


 int GEN2_PCIEPHYADDR ;
 int GEN2_PCIEPHYCTRL ;
 int GEN2_PCIEPHYDATA ;
 int rcar_pci_write_reg (struct rcar_pcie*,int,int ) ;

__attribute__((used)) static int rcar_pcie_phy_init_gen2(struct rcar_pcie *pcie)
{




 rcar_pci_write_reg(pcie, 0x000f0030, GEN2_PCIEPHYADDR);
 rcar_pci_write_reg(pcie, 0x00381203, GEN2_PCIEPHYDATA);
 rcar_pci_write_reg(pcie, 0x00000001, GEN2_PCIEPHYCTRL);
 rcar_pci_write_reg(pcie, 0x00000006, GEN2_PCIEPHYCTRL);

 rcar_pci_write_reg(pcie, 0x000f0054, GEN2_PCIEPHYADDR);

 rcar_pci_write_reg(pcie, 0x13802007, GEN2_PCIEPHYDATA);
 rcar_pci_write_reg(pcie, 0x00000001, GEN2_PCIEPHYCTRL);
 rcar_pci_write_reg(pcie, 0x00000006, GEN2_PCIEPHYCTRL);

 return 0;
}
