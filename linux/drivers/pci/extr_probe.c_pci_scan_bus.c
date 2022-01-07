
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_ops {int dummy; } ;
struct pci_bus {int dummy; } ;


 int LIST_HEAD (int ) ;
 int busn_resource ;
 int iomem_resource ;
 int ioport_resource ;
 int pci_add_resource (int *,int *) ;
 struct pci_bus* pci_create_root_bus (int *,int,struct pci_ops*,void*,int *) ;
 int pci_free_resource_list (int *) ;
 int pci_scan_child_bus (struct pci_bus*) ;
 int resources ;

struct pci_bus *pci_scan_bus(int bus, struct pci_ops *ops,
     void *sysdata)
{
 LIST_HEAD(resources);
 struct pci_bus *b;

 pci_add_resource(&resources, &ioport_resource);
 pci_add_resource(&resources, &iomem_resource);
 pci_add_resource(&resources, &busn_resource);
 b = pci_create_root_bus(((void*)0), bus, ops, sysdata, &resources);
 if (b) {
  pci_scan_child_bus(b);
 } else {
  pci_free_resource_list(&resources);
 }
 return b;
}
