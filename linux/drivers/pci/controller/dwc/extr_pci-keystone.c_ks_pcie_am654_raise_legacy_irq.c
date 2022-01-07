
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct keystone_pcie {struct dw_pcie* pci; } ;
struct dw_pcie {int dummy; } ;


 int INT_ENABLE ;
 int PCIE_EP_IRQ_CLR ;
 int PCIE_EP_IRQ_SET ;
 int PCIE_LEGACY_IRQ_ENABLE_CLR (int) ;
 int PCIE_LEGACY_IRQ_ENABLE_SET (int) ;
 int PCI_INTERRUPT_PIN ;
 int dw_pcie_readb_dbi (struct dw_pcie*,int ) ;
 int ks_pcie_app_writel (struct keystone_pcie*,int ,int ) ;
 int mdelay (int) ;

__attribute__((used)) static void ks_pcie_am654_raise_legacy_irq(struct keystone_pcie *ks_pcie)
{
 struct dw_pcie *pci = ks_pcie->pci;
 u8 int_pin;

 int_pin = dw_pcie_readb_dbi(pci, PCI_INTERRUPT_PIN);
 if (int_pin == 0 || int_pin > 4)
  return;

 ks_pcie_app_writel(ks_pcie, PCIE_LEGACY_IRQ_ENABLE_SET(int_pin),
      INT_ENABLE);
 ks_pcie_app_writel(ks_pcie, PCIE_EP_IRQ_SET, INT_ENABLE);
 mdelay(1);
 ks_pcie_app_writel(ks_pcie, PCIE_EP_IRQ_CLR, INT_ENABLE);
 ks_pcie_app_writel(ks_pcie, PCIE_LEGACY_IRQ_ENABLE_CLR(int_pin),
      INT_ENABLE);
}
