
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_pcibus_device {TYPE_1__* mem_config; } ;
struct TYPE_2__ {int start; } ;


 int PCI_CONFIG_MMIO_LENGTH ;
 int vmbus_free_mmio (int ,int ) ;

__attribute__((used)) static void hv_free_config_window(struct hv_pcibus_device *hbus)
{
 vmbus_free_mmio(hbus->mem_config->start, PCI_CONFIG_MMIO_LENGTH);
}
