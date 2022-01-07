
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mem; int io; } ;
struct mt7621_pcie {int busn; TYPE_1__ offset; int mem; int io; struct device* dev; } ;
struct list_head {int dummy; } ;
struct device {int dummy; } ;


 int devm_request_pci_bus_resources (struct device*,struct list_head*) ;
 int pci_add_resource (struct list_head*,int *) ;
 int pci_add_resource_offset (struct list_head*,int *,int ) ;

__attribute__((used)) static int mt7621_pcie_request_resources(struct mt7621_pcie *pcie,
      struct list_head *res)
{
 struct device *dev = pcie->dev;

 pci_add_resource_offset(res, &pcie->io, pcie->offset.io);
 pci_add_resource_offset(res, &pcie->mem, pcie->offset.mem);
 pci_add_resource(res, &pcie->busn);

 return devm_request_pci_bus_resources(dev, res);
}
