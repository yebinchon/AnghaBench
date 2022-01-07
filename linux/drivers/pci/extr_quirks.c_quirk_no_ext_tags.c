
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_host_bridge {int no_ext_tags; int bus; } ;
struct pci_dev {int bus; } ;


 int pci_configure_extended_tags ;
 struct pci_host_bridge* pci_find_host_bridge (int ) ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_walk_bus (int ,int ,int *) ;

__attribute__((used)) static void quirk_no_ext_tags(struct pci_dev *pdev)
{
 struct pci_host_bridge *bridge = pci_find_host_bridge(pdev->bus);

 if (!bridge)
  return;

 bridge->no_ext_tags = 1;
 pci_info(pdev, "disabling Extended Tags (this device can't handle them)\n");

 pci_walk_bus(bridge->bus, pci_configure_extended_tags, ((void*)0));
}
