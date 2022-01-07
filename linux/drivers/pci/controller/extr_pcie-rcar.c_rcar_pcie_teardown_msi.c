
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_msi {int pages; } ;
struct rcar_pcie {struct rcar_msi msi; } ;


 int PCIEMSIALR ;
 int PCIEMSIIER ;
 int free_pages (int ,int ) ;
 int rcar_pci_write_reg (struct rcar_pcie*,int ,int ) ;
 int rcar_pcie_unmap_msi (struct rcar_pcie*) ;

__attribute__((used)) static void rcar_pcie_teardown_msi(struct rcar_pcie *pcie)
{
 struct rcar_msi *msi = &pcie->msi;


 rcar_pci_write_reg(pcie, 0, PCIEMSIIER);


 rcar_pci_write_reg(pcie, 0, PCIEMSIALR);

 free_pages(msi->pages, 0);

 rcar_pcie_unmap_msi(pcie);
}
