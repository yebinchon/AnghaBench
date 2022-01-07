
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dra7xx_pcie {int dummy; } ;


 int PCIECTRL_TI_CONF_INTX_ASSERT ;
 int PCIECTRL_TI_CONF_INTX_DEASSERT ;
 int dra7xx_pcie_writel (struct dra7xx_pcie*,int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static void dra7xx_pcie_raise_legacy_irq(struct dra7xx_pcie *dra7xx)
{
 dra7xx_pcie_writel(dra7xx, PCIECTRL_TI_CONF_INTX_ASSERT, 0x1);
 mdelay(1);
 dra7xx_pcie_writel(dra7xx, PCIECTRL_TI_CONF_INTX_DEASSERT, 0x1);
}
