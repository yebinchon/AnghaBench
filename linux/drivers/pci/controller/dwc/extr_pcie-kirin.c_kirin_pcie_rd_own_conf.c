
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcie_port {int dummy; } ;
struct kirin_pcie {int dummy; } ;
struct dw_pcie {scalar_t__ dbi_base; } ;


 int dw_pcie_read (scalar_t__,int,int *) ;
 int kirin_pcie_sideband_dbi_r_mode (struct kirin_pcie*,int) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct kirin_pcie* to_kirin_pcie (struct dw_pcie*) ;

__attribute__((used)) static int kirin_pcie_rd_own_conf(struct pcie_port *pp,
      int where, int size, u32 *val)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct kirin_pcie *kirin_pcie = to_kirin_pcie(pci);
 int ret;

 kirin_pcie_sideband_dbi_r_mode(kirin_pcie, 1);
 ret = dw_pcie_read(pci->dbi_base + where, size, val);
 kirin_pcie_sideband_dbi_r_mode(kirin_pcie, 0);

 return ret;
}
