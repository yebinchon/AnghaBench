
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nwl_msi {int dev_domain; int msi_domain; } ;
struct nwl_pcie {struct nwl_msi msi; struct device* dev; } ;
struct fwnode_handle {int dummy; } ;
struct device {int of_node; } ;


 int ENOMEM ;
 int INT_PCI_MSI_NR ;
 int dev_err (struct device*,char*) ;
 int dev_msi_domain_ops ;
 int irq_domain_add_linear (int *,int ,int *,struct nwl_pcie*) ;
 int irq_domain_remove (int ) ;
 int nwl_msi_domain_info ;
 struct fwnode_handle* of_node_to_fwnode (int ) ;
 int pci_msi_create_irq_domain (struct fwnode_handle*,int *,int ) ;

__attribute__((used)) static int nwl_pcie_init_msi_irq_domain(struct nwl_pcie *pcie)
{
 return 0;
}
