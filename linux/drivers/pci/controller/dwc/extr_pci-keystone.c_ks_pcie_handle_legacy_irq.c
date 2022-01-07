
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct keystone_pcie {int legacy_irq_domain; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;


 int BIT (int ) ;
 int IRQ_EOI ;
 int IRQ_STATUS (int) ;
 int dev_dbg (struct device*,char*,int,int) ;
 int generic_handle_irq (int) ;
 int irq_linear_revmap (int ,int) ;
 int ks_pcie_app_readl (struct keystone_pcie*,int ) ;
 int ks_pcie_app_writel (struct keystone_pcie*,int ,int) ;

__attribute__((used)) static void ks_pcie_handle_legacy_irq(struct keystone_pcie *ks_pcie,
          int offset)
{
 struct dw_pcie *pci = ks_pcie->pci;
 struct device *dev = pci->dev;
 u32 pending;
 int virq;

 pending = ks_pcie_app_readl(ks_pcie, IRQ_STATUS(offset));

 if (BIT(0) & pending) {
  virq = irq_linear_revmap(ks_pcie->legacy_irq_domain, offset);
  dev_dbg(dev, ": irq: irq_offset %d, virq %d\n", offset, virq);
  generic_handle_irq(virq);
 }


 ks_pcie_app_writel(ks_pcie, IRQ_EOI, offset);
}
