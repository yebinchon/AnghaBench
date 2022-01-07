
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dev; } ;
struct irq_domain {int dummy; } ;
struct fwnode_handle {int dummy; } ;


 int DOMAIN_BUS_PCI_MSI ;
 struct irq_domain* irq_find_matching_fwnode (struct fwnode_handle*,int ) ;
 struct fwnode_handle* pci_msi_get_fwnode_cb (int *) ;

struct irq_domain *pci_host_bridge_acpi_msi_domain(struct pci_bus *bus)
{
 struct fwnode_handle *fwnode;

 if (!pci_msi_get_fwnode_cb)
  return ((void*)0);

 fwnode = pci_msi_get_fwnode_cb(&bus->dev);
 if (!fwnode)
  return ((void*)0);

 return irq_find_matching_fwnode(fwnode, DOMAIN_BUS_PCI_MSI);
}
