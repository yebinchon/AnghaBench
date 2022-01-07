
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;
struct armada8k_pcie {int dummy; } ;


 int armada8k_pcie_establish_link (struct armada8k_pcie*) ;
 int dw_pcie_setup_rc (struct pcie_port*) ;
 struct armada8k_pcie* to_armada8k_pcie (struct dw_pcie*) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;

__attribute__((used)) static int armada8k_pcie_host_init(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct armada8k_pcie *pcie = to_armada8k_pcie(pci);

 dw_pcie_setup_rc(pp);
 armada8k_pcie_establish_link(pcie);

 return 0;
}
