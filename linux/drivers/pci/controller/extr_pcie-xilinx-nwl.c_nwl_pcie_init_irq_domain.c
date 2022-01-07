
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nwl_pcie {int leg_mask_lock; int legacy_irq_domain; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 int PCI_NUM_INTX ;
 int dev_err (struct device*,char*) ;
 int irq_domain_add_linear (struct device_node*,int ,int *,struct nwl_pcie*) ;
 int legacy_domain_ops ;
 int nwl_pcie_init_msi_irq_domain (struct nwl_pcie*) ;
 struct device_node* of_get_next_child (struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static int nwl_pcie_init_irq_domain(struct nwl_pcie *pcie)
{
 struct device *dev = pcie->dev;
 struct device_node *node = dev->of_node;
 struct device_node *legacy_intc_node;

 legacy_intc_node = of_get_next_child(node, ((void*)0));
 if (!legacy_intc_node) {
  dev_err(dev, "No legacy intc node found\n");
  return -EINVAL;
 }

 pcie->legacy_irq_domain = irq_domain_add_linear(legacy_intc_node,
       PCI_NUM_INTX,
       &legacy_domain_ops,
       pcie);
 of_node_put(legacy_intc_node);
 if (!pcie->legacy_irq_domain) {
  dev_err(dev, "failed to create IRQ domain\n");
  return -ENOMEM;
 }

 raw_spin_lock_init(&pcie->leg_mask_lock);
 nwl_pcie_init_msi_irq_domain(pcie);
 return 0;
}
