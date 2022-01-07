
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_host_bridge {int windows; int (* release_fn ) (struct pci_host_bridge*) ;} ;
struct device {int dummy; } ;


 int pci_free_resource_list (int *) ;
 int stub1 (struct pci_host_bridge*) ;
 struct pci_host_bridge* to_pci_host_bridge (struct device*) ;

__attribute__((used)) static void devm_pci_release_host_bridge_dev(struct device *dev)
{
 struct pci_host_bridge *bridge = to_pci_host_bridge(dev);

 if (bridge->release_fn)
  bridge->release_fn(bridge);

 pci_free_resource_list(&bridge->windows);
}
