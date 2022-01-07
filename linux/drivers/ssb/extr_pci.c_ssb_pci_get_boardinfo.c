
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssb_bus {TYPE_1__* host_pci; } ;
struct ssb_boardinfo {int type; int vendor; } ;
struct TYPE_2__ {int subsystem_device; int subsystem_vendor; } ;



__attribute__((used)) static void ssb_pci_get_boardinfo(struct ssb_bus *bus,
      struct ssb_boardinfo *bi)
{
 bi->vendor = bus->host_pci->subsystem_vendor;
 bi->type = bus->host_pci->subsystem_device;
}
