
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;
struct irq_domain {int dummy; } ;
struct fwnode_handle {int dummy; } ;


 int DOMAIN_BUS_PCI_MSI ;
 struct irq_domain* irq_find_matching_fwnode (struct fwnode_handle*,int ) ;
 struct irq_domain* pci_host_bridge_acpi_msi_domain (struct pci_bus*) ;
 struct irq_domain* pci_host_bridge_of_msi_domain (struct pci_bus*) ;
 struct fwnode_handle* pci_root_bus_fwnode (struct pci_bus*) ;

__attribute__((used)) static struct irq_domain *pci_host_bridge_msi_domain(struct pci_bus *bus)
{
 struct irq_domain *d;





 d = pci_host_bridge_of_msi_domain(bus);
 if (!d)
  d = pci_host_bridge_acpi_msi_domain(bus);
 return d;
}
