
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mobiveil_msi {int dev_domain; int msi_domain; int num_of_vectors; int lock; } ;
struct mobiveil_pcie {struct mobiveil_msi msi; TYPE_1__* pdev; } ;
struct fwnode_handle {int dummy; } ;
struct device {int of_node; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENOMEM ;
 int dev_err (struct device*,char*) ;
 int irq_domain_add_linear (int *,int ,int *,struct mobiveil_pcie*) ;
 int irq_domain_remove (int ) ;
 int mobiveil_msi_domain_info ;
 int msi_domain_ops ;
 int mutex_init (int *) ;
 struct fwnode_handle* of_node_to_fwnode (int ) ;
 int pci_msi_create_irq_domain (struct fwnode_handle*,int *,int ) ;

__attribute__((used)) static int mobiveil_allocate_msi_domains(struct mobiveil_pcie *pcie)
{
 struct device *dev = &pcie->pdev->dev;
 struct fwnode_handle *fwnode = of_node_to_fwnode(dev->of_node);
 struct mobiveil_msi *msi = &pcie->msi;

 mutex_init(&pcie->msi.lock);
 msi->dev_domain = irq_domain_add_linear(((void*)0), msi->num_of_vectors,
      &msi_domain_ops, pcie);
 if (!msi->dev_domain) {
  dev_err(dev, "failed to create IRQ domain\n");
  return -ENOMEM;
 }

 msi->msi_domain = pci_msi_create_irq_domain(fwnode,
          &mobiveil_msi_domain_info,
          msi->dev_domain);
 if (!msi->msi_domain) {
  dev_err(dev, "failed to create MSI domain\n");
  irq_domain_remove(msi->dev_domain);
  return -ENOMEM;
 }

 return 0;
}
