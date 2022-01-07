
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_is_pci (struct device*) ;

__attribute__((used)) static bool pci_acpi_bus_match(struct device *dev)
{
 return dev_is_pci(dev);
}
