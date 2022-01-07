
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pci_host_bridge {int bus; } ;
struct mtk_pcie {int dummy; } ;


 int mtk_pcie_free_resources (struct mtk_pcie*) ;
 int mtk_pcie_irq_teardown (struct mtk_pcie*) ;
 int mtk_pcie_put_resources (struct mtk_pcie*) ;
 struct pci_host_bridge* pci_host_bridge_from_priv (struct mtk_pcie*) ;
 int pci_remove_root_bus (int ) ;
 int pci_stop_root_bus (int ) ;
 struct mtk_pcie* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_pcie_remove(struct platform_device *pdev)
{
 struct mtk_pcie *pcie = platform_get_drvdata(pdev);
 struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);

 pci_stop_root_bus(host->bus);
 pci_remove_root_bus(host->bus);
 mtk_pcie_free_resources(pcie);

 mtk_pcie_irq_teardown(pcie);

 mtk_pcie_put_resources(pcie);

 return 0;
}
