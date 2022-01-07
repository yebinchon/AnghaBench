
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int fwnode; TYPE_1__* parent; } ;
struct acpi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;


 int CONFIG_OF ;
 scalar_t__ IS_ENABLED (int ) ;
 int acpi_dma_configure (struct device*,int ) ;
 int acpi_get_dma_attr (struct acpi_device*) ;
 scalar_t__ has_acpi_companion (struct device*) ;
 int of_dma_configure (struct device*,scalar_t__,int) ;
 struct device* pci_get_host_bridge_device (int ) ;
 int pci_put_host_bridge_device (struct device*) ;
 struct acpi_device* to_acpi_device_node (int ) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static int pci_dma_configure(struct device *dev)
{
 struct device *bridge;
 int ret = 0;

 bridge = pci_get_host_bridge_device(to_pci_dev(dev));

 if (IS_ENABLED(CONFIG_OF) && bridge->parent &&
     bridge->parent->of_node) {
  ret = of_dma_configure(dev, bridge->parent->of_node, 1);
 } else if (has_acpi_companion(bridge)) {
  struct acpi_device *adev = to_acpi_device_node(bridge->fwnode);

  ret = acpi_dma_configure(dev, acpi_get_dma_attr(adev));
 }

 pci_put_host_bridge_device(bridge);
 return ret;
}
