
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct queue_entry {int entry_idx; TYPE_1__* queue; } ;
struct TYPE_2__ {struct rt2x00_dev* rt2x00dev; } ;


 int HW_BEACON_OFFSET (int ) ;
 int TXRX_CSR9 ;
 int TXRX_CSR9_BEACON_GEN ;
 int rt2x00_set_field32 (int *,int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt61pci_clear_beacon(struct queue_entry *entry)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 u32 orig_reg, reg;





 orig_reg = rt2x00mmio_register_read(rt2x00dev, TXRX_CSR9);
 reg = orig_reg;
 rt2x00_set_field32(&reg, TXRX_CSR9_BEACON_GEN, 0);
 rt2x00mmio_register_write(rt2x00dev, TXRX_CSR9, reg);




 rt2x00mmio_register_write(rt2x00dev,
      HW_BEACON_OFFSET(entry->entry_idx), 0);




 rt2x00mmio_register_write(rt2x00dev, TXRX_CSR9, orig_reg);
}
