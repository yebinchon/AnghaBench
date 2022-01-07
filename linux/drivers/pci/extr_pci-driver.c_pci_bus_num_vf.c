
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pci_num_vf (int ) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static int pci_bus_num_vf(struct device *dev)
{
 return pci_num_vf(to_pci_dev(dev));
}
