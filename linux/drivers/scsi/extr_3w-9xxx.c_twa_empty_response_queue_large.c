
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_1__* tw_pci_dev; } ;
struct TYPE_5__ {scalar_t__ device; } ;
typedef TYPE_2__ TW_Device_Extension ;


 int HZ ;
 scalar_t__ PCI_DEVICE_ID_3WARE_9000 ;
 int TW_9550SX_DRAIN_COMPLETED ;
 int TW_RESPONSE_QUEUE_REG_ADDR_LARGE (TYPE_2__*) ;
 unsigned long jiffies ;
 int msleep (int) ;
 int readl (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int twa_empty_response_queue_large(TW_Device_Extension *tw_dev)
{
 u32 response_que_value = 0;
 unsigned long before;
 int retval = 1;

 if (tw_dev->tw_pci_dev->device != PCI_DEVICE_ID_3WARE_9000) {
  before = jiffies;
  while ((response_que_value & TW_9550SX_DRAIN_COMPLETED) != TW_9550SX_DRAIN_COMPLETED) {
   response_que_value = readl(TW_RESPONSE_QUEUE_REG_ADDR_LARGE(tw_dev));
   msleep(1);
   if (time_after(jiffies, before + HZ * 30))
    goto out;
  }

  msleep(500);
  retval = 0;
 } else
  retval = 0;
out:
 return retval;
}
