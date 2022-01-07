
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dra7xx_pcie {int dummy; } ;


 int LEG_EP_INTERRUPTS ;
 int MSI ;
 int PCIECTRL_DRA7XX_CONF_IRQENABLE_SET_MSI ;
 int PCIECTRL_DRA7XX_CONF_IRQSTATUS_MSI ;
 int dra7xx_pcie_writel (struct dra7xx_pcie*,int ,int) ;

__attribute__((used)) static void dra7xx_pcie_enable_msi_interrupts(struct dra7xx_pcie *dra7xx)
{
 dra7xx_pcie_writel(dra7xx, PCIECTRL_DRA7XX_CONF_IRQSTATUS_MSI,
      LEG_EP_INTERRUPTS | MSI);

 dra7xx_pcie_writel(dra7xx,
      PCIECTRL_DRA7XX_CONF_IRQENABLE_SET_MSI,
      MSI | LEG_EP_INTERRUPTS);
}
