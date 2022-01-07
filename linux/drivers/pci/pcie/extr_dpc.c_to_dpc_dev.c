
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct dpc_dev {int dummy; } ;
struct device {int dummy; } ;


 int PCIE_PORT_SERVICE_DPC ;
 struct dpc_dev* get_service_data (int ) ;
 struct device* pcie_port_find_device (struct pci_dev*,int ) ;
 int to_pcie_device (struct device*) ;

__attribute__((used)) static struct dpc_dev *to_dpc_dev(struct pci_dev *dev)
{
 struct device *device;

 device = pcie_port_find_device(dev, PCIE_PORT_SERVICE_DPC);
 if (!device)
  return ((void*)0);
 return get_service_data(to_pcie_device(device));
}
