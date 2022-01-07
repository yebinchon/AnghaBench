
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pci_host_bridge {int bus; } ;
struct altera_pcie {int resources; } ;


 int altera_pcie_irq_teardown (struct altera_pcie*) ;
 int pci_free_resource_list (int *) ;
 struct pci_host_bridge* pci_host_bridge_from_priv (struct altera_pcie*) ;
 int pci_remove_root_bus (int ) ;
 int pci_stop_root_bus (int ) ;
 struct altera_pcie* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int altera_pcie_remove(struct platform_device *pdev)
{
 struct altera_pcie *pcie = platform_get_drvdata(pdev);
 struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);

 pci_stop_root_bus(bridge->bus);
 pci_remove_root_bus(bridge->bus);
 pci_free_resource_list(&pcie->resources);
 altera_pcie_irq_teardown(pcie);

 return 0;
}
