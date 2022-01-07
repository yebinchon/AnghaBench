
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcie_port {int dummy; } ;
struct dw_pcie {scalar_t__ dbi_base; } ;


 int dw_pcie_write (scalar_t__,int,int ) ;
 int histb_pcie_dbi_w_mode (struct pcie_port*,int) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;

__attribute__((used)) static int histb_pcie_wr_own_conf(struct pcie_port *pp, int where,
      int size, u32 val)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 int ret;

 histb_pcie_dbi_w_mode(pp, 1);
 ret = dw_pcie_write(pci->dbi_base + where, size, val);
 histb_pcie_dbi_w_mode(pp, 0);

 return ret;
}
