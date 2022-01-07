
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie_dw {int dummy; } ;
struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;


 int APPL_INTR_STATUS_L0 ;
 int APPL_INTR_STATUS_L1_0_0 ;
 int APPL_INTR_STATUS_L1_1 ;
 int APPL_INTR_STATUS_L1_10 ;
 int APPL_INTR_STATUS_L1_11 ;
 int APPL_INTR_STATUS_L1_13 ;
 int APPL_INTR_STATUS_L1_14 ;
 int APPL_INTR_STATUS_L1_15 ;
 int APPL_INTR_STATUS_L1_17 ;
 int APPL_INTR_STATUS_L1_2 ;
 int APPL_INTR_STATUS_L1_3 ;
 int APPL_INTR_STATUS_L1_6 ;
 int APPL_INTR_STATUS_L1_7 ;
 int APPL_INTR_STATUS_L1_8_0 ;
 int APPL_INTR_STATUS_L1_9 ;
 int CONFIG_PCI_MSI ;
 scalar_t__ IS_ENABLED (int ) ;
 int appl_writel (struct tegra_pcie_dw*,int,int ) ;
 int tegra_pcie_enable_legacy_interrupts (struct pcie_port*) ;
 int tegra_pcie_enable_msi_interrupts (struct pcie_port*) ;
 int tegra_pcie_enable_system_interrupts (struct pcie_port*) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct tegra_pcie_dw* to_tegra_pcie (struct dw_pcie*) ;

__attribute__((used)) static void tegra_pcie_enable_interrupts(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct tegra_pcie_dw *pcie = to_tegra_pcie(pci);


 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L0);
 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_0_0);
 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_1);
 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_2);
 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_3);
 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_6);
 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_7);
 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_8_0);
 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_9);
 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_10);
 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_11);
 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_13);
 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_14);
 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_15);
 appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_17);

 tegra_pcie_enable_system_interrupts(pp);
 tegra_pcie_enable_legacy_interrupts(pp);
 if (IS_ENABLED(CONFIG_PCI_MSI))
  tegra_pcie_enable_msi_interrupts(pp);
}
