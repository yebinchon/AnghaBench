
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_pcie_bus_priv {struct pci_dev* pdev; } ;
struct qtnf_bus {int fw_work; } ;
struct pci_dev {int dev; } ;


 struct qtnf_pcie_bus_priv* get_bus_priv (struct qtnf_bus*) ;
 int get_device (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void qtnf_pcie_bringup_fw_async(struct qtnf_bus *bus)
{
 struct qtnf_pcie_bus_priv *priv = get_bus_priv(bus);
 struct pci_dev *pdev = priv->pdev;

 get_device(&pdev->dev);
 schedule_work(&bus->fw_work);
}
