
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_msi {int used; int domain; } ;
struct rcar_pcie {struct device* dev; struct rcar_msi msi; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PCIEMSIFR ;
 int dev_dbg (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 unsigned int find_first_bit (unsigned long*,int) ;
 int generic_handle_irq (unsigned int) ;
 unsigned int irq_find_mapping (int ,unsigned int) ;
 unsigned long rcar_pci_read_reg (struct rcar_pcie*,int ) ;
 int rcar_pci_write_reg (struct rcar_pcie*,int,int ) ;
 scalar_t__ test_bit (unsigned int,int ) ;

__attribute__((used)) static irqreturn_t rcar_pcie_msi_irq(int irq, void *data)
{
 struct rcar_pcie *pcie = data;
 struct rcar_msi *msi = &pcie->msi;
 struct device *dev = pcie->dev;
 unsigned long reg;

 reg = rcar_pci_read_reg(pcie, PCIEMSIFR);


 if (!reg)
  return IRQ_NONE;

 while (reg) {
  unsigned int index = find_first_bit(&reg, 32);
  unsigned int msi_irq;


  rcar_pci_write_reg(pcie, 1 << index, PCIEMSIFR);

  msi_irq = irq_find_mapping(msi->domain, index);
  if (msi_irq) {
   if (test_bit(index, msi->used))
    generic_handle_irq(msi_irq);
   else
    dev_info(dev, "unhandled MSI\n");
  } else {

   dev_dbg(dev, "unexpected MSI\n");
  }


  reg = rcar_pci_read_reg(pcie, PCIEMSIFR);
 }

 return IRQ_HANDLED;
}
