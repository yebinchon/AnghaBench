
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msi_domain_info {int flags; struct irq_chip* chip; } ;
struct irq_chip {char* name; int irq_set_affinity; int irq_compose_msi_msg; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct advk_pcie {int msi_inner_domain; int msi_domain; int msi_msg; struct msi_domain_info msi_domain_info; struct irq_chip msi_irq_chip; struct irq_chip msi_bottom_irq_chip; int msi_used_lock; TYPE_1__* pdev; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {struct device dev; } ;


 int ENOMEM ;
 int MSI_FLAG_MULTI_PCI_MSI ;
 int MSI_FLAG_USE_DEF_CHIP_OPS ;
 int MSI_FLAG_USE_DEF_DOM_OPS ;
 int MSI_IRQ_NUM ;
 int PCIE_MSI_ADDR_HIGH_REG ;
 int PCIE_MSI_ADDR_LOW_REG ;
 int advk_msi_domain_ops ;
 int advk_msi_irq_compose_msi_msg ;
 int advk_msi_set_affinity ;
 int advk_writel (struct advk_pcie*,int ,int ) ;
 int irq_domain_add_linear (int *,int ,int *,struct advk_pcie*) ;
 int irq_domain_remove (int ) ;
 int lower_32_bits (int ) ;
 int mutex_init (int *) ;
 int of_node_to_fwnode (struct device_node*) ;
 int pci_msi_create_irq_domain (int ,struct msi_domain_info*,int ) ;
 int upper_32_bits (int ) ;
 int virt_to_phys (int *) ;

__attribute__((used)) static int advk_pcie_init_msi_irq_domain(struct advk_pcie *pcie)
{
 struct device *dev = &pcie->pdev->dev;
 struct device_node *node = dev->of_node;
 struct irq_chip *bottom_ic, *msi_ic;
 struct msi_domain_info *msi_di;
 phys_addr_t msi_msg_phys;

 mutex_init(&pcie->msi_used_lock);

 bottom_ic = &pcie->msi_bottom_irq_chip;

 bottom_ic->name = "MSI";
 bottom_ic->irq_compose_msi_msg = advk_msi_irq_compose_msi_msg;
 bottom_ic->irq_set_affinity = advk_msi_set_affinity;

 msi_ic = &pcie->msi_irq_chip;
 msi_ic->name = "advk-MSI";

 msi_di = &pcie->msi_domain_info;
 msi_di->flags = MSI_FLAG_USE_DEF_DOM_OPS | MSI_FLAG_USE_DEF_CHIP_OPS |
  MSI_FLAG_MULTI_PCI_MSI;
 msi_di->chip = msi_ic;

 msi_msg_phys = virt_to_phys(&pcie->msi_msg);

 advk_writel(pcie, lower_32_bits(msi_msg_phys),
      PCIE_MSI_ADDR_LOW_REG);
 advk_writel(pcie, upper_32_bits(msi_msg_phys),
      PCIE_MSI_ADDR_HIGH_REG);

 pcie->msi_inner_domain =
  irq_domain_add_linear(((void*)0), MSI_IRQ_NUM,
          &advk_msi_domain_ops, pcie);
 if (!pcie->msi_inner_domain)
  return -ENOMEM;

 pcie->msi_domain =
  pci_msi_create_irq_domain(of_node_to_fwnode(node),
       msi_di, pcie->msi_inner_domain);
 if (!pcie->msi_domain) {
  irq_domain_remove(pcie->msi_inner_domain);
  return -ENOMEM;
 }

 return 0;
}
