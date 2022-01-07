
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_msi {int inner_domain; int msi_domain; int node; } ;


 int ENOMEM ;
 int NR_MSI_VEC ;
 int irq_domain_add_linear (int *,int ,int *,struct xgene_msi*) ;
 int irq_domain_remove (int ) ;
 int msi_domain_ops ;
 int of_node_to_fwnode (int ) ;
 int pci_msi_create_irq_domain (int ,int *,int ) ;
 int xgene_msi_domain_info ;

__attribute__((used)) static int xgene_allocate_domains(struct xgene_msi *msi)
{
 msi->inner_domain = irq_domain_add_linear(((void*)0), NR_MSI_VEC,
        &msi_domain_ops, msi);
 if (!msi->inner_domain)
  return -ENOMEM;

 msi->msi_domain = pci_msi_create_irq_domain(of_node_to_fwnode(msi->node),
          &xgene_msi_domain_info,
          msi->inner_domain);

 if (!msi->msi_domain) {
  irq_domain_remove(msi->inner_domain);
  return -ENOMEM;
 }

 return 0;
}
