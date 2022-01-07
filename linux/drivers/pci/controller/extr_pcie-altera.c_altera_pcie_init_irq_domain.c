
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct altera_pcie {int irq_domain; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENOMEM ;
 int PCI_NUM_INTX ;
 int dev_err (struct device*,char*) ;
 int intx_domain_ops ;
 int irq_domain_add_linear (struct device_node*,int ,int *,struct altera_pcie*) ;

__attribute__((used)) static int altera_pcie_init_irq_domain(struct altera_pcie *pcie)
{
 struct device *dev = &pcie->pdev->dev;
 struct device_node *node = dev->of_node;


 pcie->irq_domain = irq_domain_add_linear(node, PCI_NUM_INTX,
     &intx_domain_ops, pcie);
 if (!pcie->irq_domain) {
  dev_err(dev, "Failed to get a INTx IRQ domain\n");
  return -ENOMEM;
 }

 return 0;
}
