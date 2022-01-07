
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int start; scalar_t__ end; } ;
struct pci_bus {int self; TYPE_3__ busn_res; scalar_t__ primary; } ;
struct TYPE_5__ {TYPE_1__* slot; } ;
struct acpiphp_context {TYPE_2__ func; } ;
struct acpi_device {int dummy; } ;
struct TYPE_4__ {struct pci_bus* bus; } ;


 int PCI_PRIMARY_BUS ;
 struct acpiphp_context* acpiphp_grab_context (struct acpi_device*) ;
 int acpiphp_let_context_go (struct acpiphp_context*) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void acpiphp_post_dock_fixup(struct acpi_device *adev)
{
 struct acpiphp_context *context = acpiphp_grab_context(adev);
 struct pci_bus *bus;
 u32 buses;

 if (!context)
  return;

 bus = context->func.slot->bus;
 if (!bus->self)
  goto out;




 pci_read_config_dword(bus->self, PCI_PRIMARY_BUS, &buses);

 if (((buses >> 8) & 0xff) != bus->busn_res.start) {
  buses = (buses & 0xff000000)
   | ((unsigned int)(bus->primary) << 0)
   | ((unsigned int)(bus->busn_res.start) << 8)
   | ((unsigned int)(bus->busn_res.end) << 16);
  pci_write_config_dword(bus->self, PCI_PRIMARY_BUS, buses);
 }

 out:
 acpiphp_let_context_go(context);
}
