
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_bus {int * bridge; struct pci_bus* parent; TYPE_1__* self; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ acpi_pm_device_can_wakeup (int *) ;
 int acpi_pm_set_bridge_wakeup (int *,int) ;

__attribute__((used)) static int acpi_pci_propagate_wakeup(struct pci_bus *bus, bool enable)
{
 while (bus->parent) {
  if (acpi_pm_device_can_wakeup(&bus->self->dev))
   return acpi_pm_set_bridge_wakeup(&bus->self->dev, enable);

  bus = bus->parent;
 }


 if (bus->bridge) {
  if (acpi_pm_device_can_wakeup(bus->bridge))
   return acpi_pm_set_bridge_wakeup(bus->bridge, enable);
 }
 return 0;
}
