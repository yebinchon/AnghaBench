
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fwnode_handle {int dummy; } ;
struct altera_msi {int inner_domain; TYPE_1__* pdev; int msi_domain; int num_of_vectors; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;


 int ENOMEM ;
 int altera_msi_domain_info ;
 int dev_err (TYPE_2__*,char*) ;
 int irq_domain_add_linear (int *,int ,int *,struct altera_msi*) ;
 int irq_domain_remove (int ) ;
 int msi_domain_ops ;
 struct fwnode_handle* of_node_to_fwnode (int ) ;
 int pci_msi_create_irq_domain (struct fwnode_handle*,int *,int ) ;

__attribute__((used)) static int altera_allocate_domains(struct altera_msi *msi)
{
 struct fwnode_handle *fwnode = of_node_to_fwnode(msi->pdev->dev.of_node);

 msi->inner_domain = irq_domain_add_linear(((void*)0), msi->num_of_vectors,
          &msi_domain_ops, msi);
 if (!msi->inner_domain) {
  dev_err(&msi->pdev->dev, "failed to create IRQ domain\n");
  return -ENOMEM;
 }

 msi->msi_domain = pci_msi_create_irq_domain(fwnode,
    &altera_msi_domain_info, msi->inner_domain);
 if (!msi->msi_domain) {
  dev_err(&msi->pdev->dev, "failed to create MSI domain\n");
  irq_domain_remove(msi->inner_domain);
  return -ENOMEM;
 }

 return 0;
}
