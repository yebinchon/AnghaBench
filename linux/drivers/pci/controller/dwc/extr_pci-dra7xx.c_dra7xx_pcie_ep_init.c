
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {int dummy; } ;
struct dra7xx_pcie {int dummy; } ;
typedef enum pci_barno { ____Placeholder_pci_barno } pci_barno ;


 int BAR_0 ;
 int BAR_5 ;
 int dra7xx_pcie_enable_wrapper_interrupts (struct dra7xx_pcie*) ;
 int dw_pcie_ep_reset_bar (struct dw_pcie*,int) ;
 struct dra7xx_pcie* to_dra7xx_pcie (struct dw_pcie*) ;
 struct dw_pcie* to_dw_pcie_from_ep (struct dw_pcie_ep*) ;

__attribute__((used)) static void dra7xx_pcie_ep_init(struct dw_pcie_ep *ep)
{
 struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 struct dra7xx_pcie *dra7xx = to_dra7xx_pcie(pci);
 enum pci_barno bar;

 for (bar = BAR_0; bar <= BAR_5; bar++)
  dw_pcie_ep_reset_bar(pci, bar);

 dra7xx_pcie_enable_wrapper_interrupts(dra7xx);
}
