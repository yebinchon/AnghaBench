
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int bridge_d3; int subordinate; int dev; } ;


 int device_is_registered (int *) ;
 int pci_bridge_d3_possible (struct pci_dev*) ;
 int pci_dev_check_d3cold (struct pci_dev*,int*) ;
 struct pci_dev* pci_upstream_bridge (struct pci_dev*) ;
 int pci_walk_bus (int ,int (*) (struct pci_dev*,int*),int*) ;

void pci_bridge_d3_update(struct pci_dev *dev)
{
 bool remove = !device_is_registered(&dev->dev);
 struct pci_dev *bridge;
 bool d3cold_ok = 1;

 bridge = pci_upstream_bridge(dev);
 if (!bridge || !pci_bridge_d3_possible(bridge))
  return;





 if (remove && bridge->bridge_d3)
  return;
 if (!remove)
  pci_dev_check_d3cold(dev, &d3cold_ok);







 if (d3cold_ok && !bridge->bridge_d3)
  pci_walk_bus(bridge->subordinate, pci_dev_check_d3cold,
        &d3cold_ok);

 if (bridge->bridge_d3 != d3cold_ok) {
  bridge->bridge_d3 = d3cold_ok;

  pci_bridge_d3_update(bridge);
 }
}
