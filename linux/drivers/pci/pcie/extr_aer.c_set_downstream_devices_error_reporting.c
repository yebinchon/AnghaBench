
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int subordinate; } ;


 int pci_walk_bus (int ,int (*) (struct pci_dev*,int*),int*) ;
 int set_device_error_reporting (struct pci_dev*,int*) ;

__attribute__((used)) static void set_downstream_devices_error_reporting(struct pci_dev *dev,
         bool enable)
{
 set_device_error_reporting(dev, &enable);

 if (!dev->subordinate)
  return;
 pci_walk_bus(dev->subordinate, set_device_error_reporting, &enable);
}
