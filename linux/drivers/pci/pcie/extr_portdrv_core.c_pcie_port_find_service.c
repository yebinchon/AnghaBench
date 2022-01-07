
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct portdrv_service_data {struct pcie_port_service_driver* drv; int service; } ;
struct pcie_port_service_driver {int dummy; } ;
struct pci_dev {int dev; } ;


 int device_for_each_child (int *,struct portdrv_service_data*,int ) ;
 int find_service_iter ;

struct pcie_port_service_driver *pcie_port_find_service(struct pci_dev *dev,
       u32 service)
{
 struct pcie_port_service_driver *drv;
 struct portdrv_service_data pdrvs;

 pdrvs.drv = ((void*)0);
 pdrvs.service = service;
 device_for_each_child(&dev->dev, &pdrvs, find_service_iter);

 drv = pdrvs.drv;
 return drv;
}
