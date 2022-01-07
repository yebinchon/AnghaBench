
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_pcibus_device {TYPE_1__* high_mmio_res; scalar_t__ high_mmio_space; TYPE_1__* low_mmio_res; scalar_t__ low_mmio_space; } ;
struct TYPE_2__ {int start; int flags; } ;


 int IORESOURCE_BUSY ;
 int resource_size (TYPE_1__*) ;
 int vmbus_free_mmio (int ,int ) ;

__attribute__((used)) static void hv_pci_free_bridge_windows(struct hv_pcibus_device *hbus)
{





 if (hbus->low_mmio_space && hbus->low_mmio_res) {
  hbus->low_mmio_res->flags |= IORESOURCE_BUSY;
  vmbus_free_mmio(hbus->low_mmio_res->start,
    resource_size(hbus->low_mmio_res));
 }

 if (hbus->high_mmio_space && hbus->high_mmio_res) {
  hbus->high_mmio_res->flags |= IORESOURCE_BUSY;
  vmbus_free_mmio(hbus->high_mmio_res->start,
    resource_size(hbus->high_mmio_res));
 }
}
