
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kirin_pcie {int dummy; } ;


 int PCIE_ELBI_SLV_DBI_ENABLE ;
 int SOC_PCIECTRL_CTRL0_ADDR ;
 int kirin_apb_ctrl_readl (struct kirin_pcie*,int ) ;
 int kirin_apb_ctrl_writel (struct kirin_pcie*,int,int ) ;

__attribute__((used)) static void kirin_pcie_sideband_dbi_w_mode(struct kirin_pcie *kirin_pcie,
        bool on)
{
 u32 val;

 val = kirin_apb_ctrl_readl(kirin_pcie, SOC_PCIECTRL_CTRL0_ADDR);
 if (on)
  val = val | PCIE_ELBI_SLV_DBI_ENABLE;
 else
  val = val & ~PCIE_ELBI_SLV_DBI_ENABLE;

 kirin_apb_ctrl_writel(kirin_pcie, val, SOC_PCIECTRL_CTRL0_ADDR);
}
