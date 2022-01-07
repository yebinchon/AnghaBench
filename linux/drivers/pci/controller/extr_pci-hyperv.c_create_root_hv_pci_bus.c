
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * dev; } ;
struct hv_pcibus_device {int state; TYPE_3__* pci_bus; TYPE_2__* hdev; TYPE_1__ msi_chip; int resources_for_children; int sysdata; } ;
struct TYPE_9__ {TYPE_1__* msi; } ;
struct TYPE_8__ {int device; } ;


 int ENODEV ;
 int hv_pci_assign_slots (struct hv_pcibus_device*) ;
 int hv_pcibus_installed ;
 int hv_pcifront_ops ;
 int pci_bus_add_devices (TYPE_3__*) ;
 int pci_bus_assign_resources (TYPE_3__*) ;
 TYPE_3__* pci_create_root_bus (int *,int ,int *,int *,int *) ;
 int pci_lock_rescan_remove () ;
 int pci_scan_child_bus (TYPE_3__*) ;
 int pci_unlock_rescan_remove () ;

__attribute__((used)) static int create_root_hv_pci_bus(struct hv_pcibus_device *hbus)
{

 hbus->pci_bus = pci_create_root_bus(&hbus->hdev->device,
         0,
         &hv_pcifront_ops,
         &hbus->sysdata,
         &hbus->resources_for_children);
 if (!hbus->pci_bus)
  return -ENODEV;

 hbus->pci_bus->msi = &hbus->msi_chip;
 hbus->pci_bus->msi->dev = &hbus->hdev->device;

 pci_lock_rescan_remove();
 pci_scan_child_bus(hbus->pci_bus);
 pci_bus_assign_resources(hbus->pci_bus);
 hv_pci_assign_slots(hbus);
 pci_bus_add_devices(hbus->pci_bus);
 pci_unlock_rescan_remove();
 hbus->state = hv_pcibus_installed;
 return 0;
}
