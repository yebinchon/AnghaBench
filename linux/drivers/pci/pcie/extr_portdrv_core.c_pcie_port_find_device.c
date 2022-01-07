
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct portdrv_service_data {struct device* dev; int service; } ;
struct pci_dev {int dev; } ;
struct device {int dummy; } ;


 int device_for_each_child (int *,struct portdrv_service_data*,int ) ;
 int find_service_iter ;

struct device *pcie_port_find_device(struct pci_dev *dev,
          u32 service)
{
 struct device *device;
 struct portdrv_service_data pdrvs;

 pdrvs.dev = ((void*)0);
 pdrvs.service = service;
 device_for_each_child(&dev->dev, &pdrvs, find_service_iter);

 device = pdrvs.dev;
 return device;
}
