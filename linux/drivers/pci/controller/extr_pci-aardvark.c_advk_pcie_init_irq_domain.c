
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_chip {int irq_unmask; void* irq_mask_ack; void* irq_mask; int name; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct advk_pcie {int irq_domain; struct irq_chip irq_chip; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCI_NUM_INTX ;
 int advk_pcie_irq_domain_ops ;
 void* advk_pcie_irq_mask ;
 int advk_pcie_irq_unmask ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_kasprintf (struct device*,int ,char*,int ) ;
 int irq_domain_add_linear (struct device_node*,int ,int *,struct advk_pcie*) ;
 struct device_node* of_get_next_child (struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int advk_pcie_init_irq_domain(struct advk_pcie *pcie)
{
 struct device *dev = &pcie->pdev->dev;
 struct device_node *node = dev->of_node;
 struct device_node *pcie_intc_node;
 struct irq_chip *irq_chip;
 int ret = 0;

 pcie_intc_node = of_get_next_child(node, ((void*)0));
 if (!pcie_intc_node) {
  dev_err(dev, "No PCIe Intc node found\n");
  return -ENODEV;
 }

 irq_chip = &pcie->irq_chip;

 irq_chip->name = devm_kasprintf(dev, GFP_KERNEL, "%s-irq",
     dev_name(dev));
 if (!irq_chip->name) {
  ret = -ENOMEM;
  goto out_put_node;
 }

 irq_chip->irq_mask = advk_pcie_irq_mask;
 irq_chip->irq_mask_ack = advk_pcie_irq_mask;
 irq_chip->irq_unmask = advk_pcie_irq_unmask;

 pcie->irq_domain =
  irq_domain_add_linear(pcie_intc_node, PCI_NUM_INTX,
          &advk_pcie_irq_domain_ops, pcie);
 if (!pcie->irq_domain) {
  dev_err(dev, "Failed to get a INTx IRQ domain\n");
  ret = -ENOMEM;
  goto out_put_node;
 }

out_put_node:
 of_node_put(pcie_intc_node);
 return ret;
}
