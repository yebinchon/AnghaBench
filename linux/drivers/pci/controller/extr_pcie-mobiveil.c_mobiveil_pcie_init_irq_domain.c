
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mobiveil_pcie {int intx_mask_lock; int intx_domain; TYPE_1__* pdev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENOMEM ;
 int PCI_NUM_INTX ;
 int dev_err (struct device*,char*) ;
 int intx_domain_ops ;
 int irq_domain_add_linear (struct device_node*,int ,int *,struct mobiveil_pcie*) ;
 int mobiveil_allocate_msi_domains (struct mobiveil_pcie*) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
{
 struct device *dev = &pcie->pdev->dev;
 struct device_node *node = dev->of_node;
 int ret;


 pcie->intx_domain = irq_domain_add_linear(node, PCI_NUM_INTX,
        &intx_domain_ops, pcie);

 if (!pcie->intx_domain) {
  dev_err(dev, "Failed to get a INTx IRQ domain\n");
  return -ENOMEM;
 }

 raw_spin_lock_init(&pcie->intx_mask_lock);


 ret = mobiveil_allocate_msi_domains(pcie);
 if (ret)
  return ret;

 return 0;
}
