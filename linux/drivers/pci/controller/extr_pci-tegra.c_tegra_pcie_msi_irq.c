
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_msi {int used; int domain; } ;
struct tegra_pcie {struct tegra_msi msi; struct device* dev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 scalar_t__ AFI_MSI_VEC0 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned long afi_readl (struct tegra_pcie*,scalar_t__) ;
 int afi_writel (struct tegra_pcie*,int,scalar_t__) ;
 int dev_info (struct device*,char*) ;
 unsigned int find_first_bit (unsigned long*,int) ;
 int generic_handle_irq (unsigned int) ;
 unsigned int irq_find_mapping (int ,unsigned int) ;
 scalar_t__ test_bit (unsigned int,int ) ;

__attribute__((used)) static irqreturn_t tegra_pcie_msi_irq(int irq, void *data)
{
 struct tegra_pcie *pcie = data;
 struct device *dev = pcie->dev;
 struct tegra_msi *msi = &pcie->msi;
 unsigned int i, processed = 0;

 for (i = 0; i < 8; i++) {
  unsigned long reg = afi_readl(pcie, AFI_MSI_VEC0 + i * 4);

  while (reg) {
   unsigned int offset = find_first_bit(&reg, 32);
   unsigned int index = i * 32 + offset;
   unsigned int irq;


   afi_writel(pcie, 1 << offset, AFI_MSI_VEC0 + i * 4);

   irq = irq_find_mapping(msi->domain, index);
   if (irq) {
    if (test_bit(index, msi->used))
     generic_handle_irq(irq);
    else
     dev_info(dev, "unhandled MSI\n");
   } else {




    dev_info(dev, "unexpected MSI\n");
   }


   reg = afi_readl(pcie, AFI_MSI_VEC0 + i * 4);

   processed++;
  }
 }

 return processed > 0 ? IRQ_HANDLED : IRQ_NONE;
}
