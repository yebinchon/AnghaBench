
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_pcibus_device {TYPE_1__* mem_config; int hdev; } ;
struct TYPE_2__ {int flags; } ;


 int IORESOURCE_BUSY ;
 int PCI_CONFIG_MMIO_LENGTH ;
 int vmbus_allocate_mmio (TYPE_1__**,int ,int ,int,int ,int,int) ;

__attribute__((used)) static int hv_allocate_config_window(struct hv_pcibus_device *hbus)
{
 int ret;





 ret = vmbus_allocate_mmio(&hbus->mem_config, hbus->hdev, 0, -1,
      PCI_CONFIG_MMIO_LENGTH, 0x1000, 0);
 if (ret)
  return ret;
 hbus->mem_config->flags |= IORESOURCE_BUSY;

 return 0;
}
