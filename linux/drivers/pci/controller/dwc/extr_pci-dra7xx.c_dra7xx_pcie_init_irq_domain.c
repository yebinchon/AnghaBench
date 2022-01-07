
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int dummy; } ;
struct dw_pcie {struct device* dev; } ;
struct dra7xx_pcie {int irq_domain; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int ENODEV ;
 int PCI_NUM_INTX ;
 int dev_err (struct device*,char*) ;
 int intx_domain_ops ;
 int irq_domain_add_linear (struct device_node*,int ,int *,struct pcie_port*) ;
 struct device_node* of_get_next_child (struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;
 struct dra7xx_pcie* to_dra7xx_pcie (struct dw_pcie*) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;

__attribute__((used)) static int dra7xx_pcie_init_irq_domain(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct device *dev = pci->dev;
 struct dra7xx_pcie *dra7xx = to_dra7xx_pcie(pci);
 struct device_node *node = dev->of_node;
 struct device_node *pcie_intc_node = of_get_next_child(node, ((void*)0));

 if (!pcie_intc_node) {
  dev_err(dev, "No PCIe Intc node found\n");
  return -ENODEV;
 }

 dra7xx->irq_domain = irq_domain_add_linear(pcie_intc_node, PCI_NUM_INTX,
         &intx_domain_ops, pp);
 of_node_put(pcie_intc_node);
 if (!dra7xx->irq_domain) {
  dev_err(dev, "Failed to get a INTx IRQ domain\n");
  return -ENODEV;
 }

 return 0;
}
