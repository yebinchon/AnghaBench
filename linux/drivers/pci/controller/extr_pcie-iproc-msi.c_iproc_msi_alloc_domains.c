
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_msi {int inner_domain; int msi_domain; int nr_msi_vecs; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int iproc_msi_domain_info ;
 int irq_domain_add_linear (int *,int ,int *,struct iproc_msi*) ;
 int irq_domain_remove (int ) ;
 int msi_domain_ops ;
 int of_node_to_fwnode (struct device_node*) ;
 int pci_msi_create_irq_domain (int ,int *,int ) ;

__attribute__((used)) static int iproc_msi_alloc_domains(struct device_node *node,
       struct iproc_msi *msi)
{
 msi->inner_domain = irq_domain_add_linear(((void*)0), msi->nr_msi_vecs,
        &msi_domain_ops, msi);
 if (!msi->inner_domain)
  return -ENOMEM;

 msi->msi_domain = pci_msi_create_irq_domain(of_node_to_fwnode(node),
          &iproc_msi_domain_info,
          msi->inner_domain);
 if (!msi->msi_domain) {
  irq_domain_remove(msi->inner_domain);
  return -ENOMEM;
 }

 return 0;
}
